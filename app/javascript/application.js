import "@hotwired/turbo-rails"
import "controllers"


document.addEventListener('turbo:load', () => {
  if (window.__bindActionMenu) return;   
  window.__bindActionMenu = true;

  
  document.addEventListener('click', (e) => {
    const actionBtn = e.target.closest('.action_btn');
    const avatarBtn = e.target.closest('.avatar-img');
    const cardBtn   = e.target.closest('.card_action_btn');
    if (!actionBtn && !avatarBtn && !cardBtn) return;

    e.preventDefault();
    e.stopPropagation();

    
    const area = actionBtn
      ? actionBtn.closest('.board_item')?.querySelector('.action_btnArea')
      : avatarBtn
        ? avatarBtn.closest('.avatar')?.querySelector('.avatar_logoutArea')
        : cardBtn.closest('.card_show_top')?.querySelector('.card_action_btnArea');

    if (!area) return;

    
    document.querySelectorAll('.action_btnArea.active, .avatar_logoutArea.active, .card_action_btnArea.active')
      .forEach(m => { if (m !== area) m.classList.remove('active'); });

    
    const nowActive = !area.classList.contains('active');
    area.classList.toggle('active', nowActive);

    
    const btn = avatarBtn || cardBtn || null;
    if (btn) {
      btn.setAttribute('aria-expanded', String(nowActive));
      area.setAttribute('aria-hidden', String(!nowActive));
    }
  });

  
  document.addEventListener('click', (e) => {
    const inAction = e.target.closest('.action_btn, .action_btnArea');
    const inAvatar = e.target.closest('.avatar-img, .avatar_logoutArea');
    const inCard   = e.target.closest('.card_action_btn, .card_action_btnArea');
    if (inAction || inAvatar || inCard) return;

    document.querySelectorAll('.action_btnArea.active, .avatar_logoutArea.active, .card_action_btnArea.active')
      .forEach(m => m.classList.remove('active'));

    document.querySelectorAll('.avatar-img[aria-expanded="true"], .card_action_btn[aria-expanded="true"]')
      .forEach(b => b.setAttribute('aria-expanded', 'false'));
    document.querySelectorAll('.avatar_logoutArea[aria-hidden="false"], .card_action_btnArea[aria-hidden="false"]')
      .forEach(a => a.setAttribute('aria-hidden', 'true'));
  });

  
  document.addEventListener('turbo:before-cache', () => {
    document.querySelectorAll('.action_btnArea.active, .avatar_logoutArea.active, .card_action_btnArea.active')
      .forEach(m => m.classList.remove('active'));
    document.querySelectorAll('.avatar-img, .card_action_btn').forEach(b => b.setAttribute('aria-expanded', 'false'));
    document.querySelectorAll('.avatar_logoutArea, .card_action_btnArea').forEach(a => a.setAttribute('aria-hidden', 'true'));
  });
});


