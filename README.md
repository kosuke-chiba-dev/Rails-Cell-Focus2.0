# Cell Focus — 少人数チーム向け 業務連絡専用掲示板

**Cell Focus** は、雑談に埋もれがちな「重要な業務連絡」を分離し、少人数チームのタスク把握を助けるための掲示板アプリです。

---

## 現状の課題
- チーム内の重要な業務連絡が、雑談に埋もれてしまう  
- 指示したタスクをメンバーが見落としてしまうことがある

## 解決手法
- チームの雑談用チャット（例：LINE）とは別に、**業務連絡専用の掲示板**を用意
- 重要連絡はこの掲示板で報告 → 雑談に埋もれず、**タスク管理を補助**

## 想定ユーザー
- 22〜26歳の社会人
- **タスク管理が課題の少人数チーム**

## 想定ユーザー数
- **4〜6人**（少人数チーム）

## 必要な機能
- 会員登録
- 連絡の投稿
- 連絡の編集
- 連絡の削除
- 会員プロフィール設定（ニックネーム／アバター画像）

---

## 使い方
1. ユーザー登録  
2. ログイン  
3. **トップページ**で業務連絡を投稿  
4. **連絡一覧**で、登録ユーザー全員の連絡を確認

---

## その他の仕様
- **編集・削除権限**：投稿主のみが自身の連絡を編集／削除可能
- **アバター設定**：識別性向上のため、各メンバーがアバター画像を設定可能  
  - 変更手順  
    1) 各ページ右上の自身のアイコンをクリック  
    2) 表示された「プロフィール」をクリック  
    3) プロフィールページ下部の「編集する」をクリック  
    4) ニックネーム／アバター画像を変更し「更新する」
- **ログアウト手順**  
  1) 右上の自身のアイコンをクリック  
  2) 「ログアウト」ボタンをクリック
- **詳細ページ**：各連絡の本文はリンクになっており、クリックで**その連絡だけを表示するページ**へ遷移
- **プロフィールへの導線**：各連絡の左に投稿主のアイコンを表示（リンク）→ クリックで**投稿主のプロフィール**へ
- **退会機能**（メンバーの入れ替わりを想定）
  - 手順：  
    1) 右上の自身のアイコン → 「プロフィール」  
    2) 自身のプロフィールページ下部の「退会」ボタンをクリック

---

## 名前の由来（Cell Focus）
- **目的が一発で伝わる**：「少人数チーム × 集中」。雑談から重要連絡を分離するコンセプトを表現
- **B2Bらしい信頼感**：堅めの名刺やLPにも載せやすい名前  
- **“Cell” の語感**：Cell（単位）＝**小さな単位（チーム）ごとに導入**できるイメージに合致

---

<br><br><br>
## スクリーンショット

### 1. Board一覧ページ

<p align="left">
  <img src="/screenshots/board_index-xl.svg" width="50%" alt="Board一覧ページxl" />
</p>

<p align="left">
  <img src="/screenshots/board_index-s.svg" width="50%" alt="Board一覧ページs" />
</p>

<br>
<br>
<br>

### 2. Topic一覧ページ
<p align="left">
  <img src="/screenshots/topics_index-xl1.svg" width="50%" alt="Topic一覧ページ-xl1" />
</p>

<p align="left">
  <img src="/screenshots/topics_index-xl2.svg" width="50%" alt="Topic一覧ページ-xl2" />
</p>

<p align="left">
  <img src="/screenshots/topics_index-s1.svg" width="50%" alt="Topic一覧ページ-s1" />
</p>

<p align="left">
  <img src="/screenshots/topics_index-s2.svg" width="50%" alt="Topic一覧ページ-s2" />
</p>

<p align="left">
  <img src="/screenshots/topics_index-s3.svg" width="50%" alt="Topic一覧ページ-s3" />
</p>

<p align="left">
  <img src="/screenshots/topics_index-s4.svg" width="50%" alt="Topic一覧ページ-s4" />
</p>


<br>
<br>
<br>

### 3. Topic詳細ページ

<p align="left">
  <img src="/screenshots/topic_show-xl1.svg" width="50%" alt="Topic詳細ページ-xl1" />
</p>

<p align="left">
  <img src="/screenshots/topic_show-xl2.svg" width="50%" alt="Topic詳細ページ-xl2" />
</p>

<p align="left">
  <img src="/screenshots/topic_show-xl3.svg" width="50%" alt="Topic詳細ページ-xl3" />
</p>


<p align="left">
  <img src="/screenshots/topic_show-s1.svg" width="50%" alt="Topic詳細ページ-s1" />
</p>

<p align="left">
  <img src="/screenshots/topic_show-s2.svg" width="50%" alt="Topic詳細ページ-s2" />
</p>

<p align="left">
  <img src="/screenshots/topic_show-s3.svg" width="50%" alt="Topic詳細ページ-s3" />
</p>


<br>
<br>
<br>

### 4. コメント作成

<p align="left">
  <img src="/screenshots/comment-create-xl1.svg" width="50%" alt="comment-create-xl1" />
</p>

<p align="left">
  <img src="/screenshots/comment-create-s1.svg" width="50%" alt="comment-create-s1" />
</p>

<p align="left">
  <img src="/screenshots/comment-create-success-xl1.svg" width="50%" alt="comment-create-success-xl1" />
</p>

<p align="left">
  <img src="/screenshots/comment-create-success-s1.svg" width="50%" alt="comment-create-success-s1" />
</p>



<br>
<br>
<br>

### 5. Board作成

<p align="left">
  <img src="/screenshots/board_create-xl1.svg" width="50%" alt="board_create-xl1" />
</p>

<p align="left">
  <img src="/screenshots/board_create-s1.svg" width="50%" alt="board_create-s1" />
</p>

<p align="left">
  <img src="/screenshots/board_create-success-xl1.svg" width="50%" alt="board_create-success-xl1" />
</p>

<p align="left">
  <img src="/screenshots/board_create-success-s1.svg" width="50%" alt="board_create-success-s1" />
</p>

<br>
<br>
<br>

### 6. Board編集

<p align="left">
  <img src="/screenshots/board_editBtn-xl1.svg" width="50%" alt="board_editBtn-xl1" />
</p>

<p align="left">
  <img src="/screenshots/board_editBtn-s1.svg" width="50%" alt="board_editBtn-s1" />
</p>

<p align="left">
  <img src="/screenshots/board_edit-xl1.svg" width="50%" alt="board_edit-xl1" />
</p>

<p align="left">
  <img src="/screenshots/board_edit-xl2.svg" width="50%" alt="board_edit-xl2" />
</p>


<br>
<br>
<br>

### 7. Topic作成

<p align="left">
  <img src="/screenshots/topic_create-xl1.svg" width="50%" alt="topic_create-xl1" />
</p>

<p align="left">
  <img src="/screenshots/topic_create-xl2.svg" width="50%" alt="topic_create-xl2" />
</p>

<p align="left">
  <img src="/screenshots/topic_create-xl3.svg" width="50%" alt="topic_create-xl3" />
</p>

<p align="left">
  <img src="/screenshots/topic_create-success1-xl.svg" width="50%" alt="topic_create-success1-xl" />
</p>

<p align="left">
  <img src="/screenshots/topic_create-success1-s.svg" width="50%" alt="topic_create-success1-s" />
</p>

<br>
<br>
<br>

### 8.Topic編集

<p align="left">
  <img src="/screenshots/topic_editBtn1-xl.svg" width="50%" alt="topic_editBtn1-xl" />
</p>

<p align="left">
  <img src="/screenshots/topic_editBtn2-xl.svg" width="50%" alt="topic_editBtn1-s" />
</p>

<p align="left">
  <img src="/screenshots/topic_editBtn1-s.svg" width="50%" alt="topic_editBtn1-s" />
</p>

<p align="left">
  <img src="/screenshots/topic_edit-xl1.svg" width="50%" alt="topic_edit-xl1" />
</p>

<p align="left">
  <img src="/screenshots/topic_edit-success-xl1.svg" width="50%" alt="topic_edit-success-xl1" />
</p>

<p align="left">
  <img src="/screenshots/topic_edit-success-s1.svg" width="50%" alt="topic_edit-success-s1" />
</p>


<br>
<br>
<br>

### 9.プロフィール編集

<p align="left">
  <img src="/screenshots/profile_editBtn-xl1.svg" width="50%" alt="profile_editBtn-xl1" />
</p>

<p align="left">
  <img src="/screenshots/profile_editBtn-s1.svg" width="50%" alt="profile_editBtn-s1" />
</p>

<p align="left">
  <img src="/screenshots/profile_edit-xl1.svg" width="50%" alt="topic_editBtn1-s" />
</p>

<p align="left">
  <img src="/screenshots/profile_edit-s1.svg" width="50%" alt="profile_edit-s1" />
</p>

<p align="left">
  <img src="/screenshots/profile_edit-success-xl1.svg" width="50%" alt="profile_edit-success-xl1" />
</p>

<p align="left">
  <img src="/screenshots/profile_edit-success-s1.svg" width="50%" alt="profile_edit-success-s1" />
</p>


<br>
<br>
<br>

### 10.会員登録
<p align="left">
  <img src="/screenshots/signup_xl1.svg" width="50%" alt="signup_xl1" />
</p>

<p align="left">
  <img src="/screenshots/signup_s1.svg" width="50%" alt="signup_s1" />
</p>


<br>
<br>
<br>

### 11.ログイン
<p align="left">
  <img src="/screenshots/login_xl1.svg" width="50%" alt="signup_xl1" />
</p>

<p align="left">
  <img src="/screenshots/login_s1.svg" width="50%" alt="signup_s1" />
</p>



<br>
<br>
<br>

### 12.ログアウト
<p align="left">
  <img src="/screenshots/profile_editBtn-xl1.svg" width="50%" alt="profile_editBtn-xl1" />
</p>

<p align="left">
  <img src="/screenshots/profile_editBtn-s1.svg" width="50%" alt="profile_editBtn-s1" />
</p>

