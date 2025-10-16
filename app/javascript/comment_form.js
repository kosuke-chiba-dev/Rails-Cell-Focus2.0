function scrollCommentsToBottom({ smooth = false } = {}) {
  const wrap =
    document.getElementById('comments-wrapper') ||
    document.getElementById('comments')?.parentElement; 
  if (!wrap) return;

  const doScroll = () =>
    wrap.scrollTo({ top: wrap.scrollHeight, behavior: smooth ? 'smooth' : 'auto' });

   requestAnimationFrame(() => requestAnimationFrame(doScroll));
}

function initCommentForm() {
  const form = document.getElementById('new-comment-form');
  if (!form) return;

  const commentsList = document.getElementById('comments');
  if (!commentsList) return;

  const tokenEl = document.querySelector('meta[name="csrf-token"]');
  const csrfToken =
    tokenEl ? tokenEl.content : form.querySelector('input[name="authenticity_token"]')?.value;

  if (form.dataset.bound === 'true') return;
  form.dataset.bound = 'true';

  scrollCommentsToBottom({ smooth: false });

  form.addEventListener('submit', async (e) => {
    e.preventDefault();

    const url = form.action;
    const formData = new FormData(form);

    try {
      const res = await fetch(url, {
        method: 'POST',
        headers: {
          'X-CSRF-Token': csrfToken,
          'X-Requested-With': 'XMLHttpRequest',
          'Accept': 'text/html',
        },
        body: formData,
      });

      if (res.ok) {
        const html = await res.text();
        commentsList.insertAdjacentHTML('beforeend', html);
        form.reset();
        document.getElementById('comment_body')?.focus();

        scrollCommentsToBottom({ smooth: true });
      } else {
        const data = await res.json().catch(() => ({}));
        alert(data.errors ? data.errors.join('\n') : 'コメントの作成に失敗しました');
      }
    } catch (err) {
      console.error(err);
      alert('通信エラーが発生しました');
    }
  });
}

document.addEventListener('turbo:load', initCommentForm);
export {};

