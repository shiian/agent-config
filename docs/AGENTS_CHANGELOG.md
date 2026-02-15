# AGENTS Change Log
> AGENTS.md の変更履歴（運用ログ）
>
> 目的：
> - 「いつ・なぜ・何を」変えたかを短く残して、後から判断の経緯を追えるようにする
> - ルールが増えすぎたり矛盾したときに、巻き戻しやすくする
>
> ✅ 必須項目（この3つは必ず埋める）
> - Type（Added/Changed/Fixed/Removed/Security/Docs）
> - Mode（Deep Research / Engineering / Review / Quick Help / AGENTS Maintenance）
> - Severity（S0/S1/S2/S3）
>
> 記録方針：
> - 1変更 = 1エントリ（短くてOK）
> - 迷ったら「理由」と「影響」だけは必ず書く
> - 可能なら Git のコミット/PR/差分リンク（Diff/Ref）を添える
>
> Severity目安：
> - S0: 影響ほぼ無し（学習・軽作業）
> - S1: 一部影響（手戻りあり得るが致命的ではない）
> - S2: データ破損/業務停止/安全性に影響し得る
> - S3: 重大（恒久損失・広範囲・安全上の危険）
>
---

## Unreleased
- （まだリリースしていない変更があればここに追記）

---

## テンプレ（コピペ用：Type/Mode/Severity は必須）
- YYYY-MM-DD: **[Type] タイトル（短く）**
  - Type: Added / Changed / Fixed / Removed / Security / Docs  ※必須
  - Mode: Deep Research / Engineering / Review / Quick Help / AGENTS Maintenance  ※必須
  - Severity: S0 / S1 / S2 / S3  ※必須
  - 変更: （何を変えた？ 1〜3行）
  - 理由: （なぜ変えた？ 1〜2行）
  - 影響: （運用がどう変わる？ 1〜2行）
  - ロールバック: （戻し方があるなら。無ければ「N/A」）
  - Diff/Ref: （commit / PR / issue / link。無ければ「N/A」）

---

## 2026-02

- 2026-02-09: **[Changed] モデル優先順位を `gemini2.5` および簡易モデルに更新**
  - Type: Changed
  - Mode: AGENTS Maintenance
  - Severity: S0
  - 変更: プロジェクト固有のセクションにおけるモデル使用の優先順位を `gemini3 flash` から `gemini2.5` および簡易モデルへ変更。
  - 理由: 無料枠の最大限の活用と、現在の設定での安定稼働を優先するため。
  - 影響: 今後のモデル選択において `gemini2.5` やより簡易なモデルが優先されるようになる。
  - ロールバック: 該当行を `AGENTS.md` の以前の記述に戻す。
  - Diff/Ref: N/A

- 2026-02-09: **[Added] 無料枠維持のため `gemini3 flash` を優先使用するルールを第13章に追記**
  - Type: Added
  - Mode: AGENTS Maintenance
  - Severity: S0
  - 変更: プロジェクト固有のセクションにモデル使用の優先順位を追加。
  - 理由: 無料枠の最大限の活用と費用効率のため。
  - 影響: 今後のモデル選択において `gemini3 flash` が優先されるようになる。
  - ロールバック: 該当行を `AGENTS.md` から削除。
  - Diff/Ref: N/A

- 2026-02-09: **[Added] AGENTS Maintenance Mode を追加**
  - Type: Added
  - Mode: AGENTS Maintenance
  - Severity: S1
  - 変更: 改定フロー（最小変更・diff提示・合意）を明文化
  - 理由: ルール改定が場当たりにならないようにするため
  - 影響: 改定依頼時の手順が固定化され、差分レビューしやすくなる
  - ロールバック: 該当章を削除して旧運用に戻す
  - Diff/Ref: N/A

- 2026-02-09: **[Changed] 多言語クエリを“各言語で記述”に統一**
  - Type: Changed
  - Mode: Deep Research
  - Severity: S1
  - 変更: 追加言語クエリを日本語訳で代用しない方針を明記
  - 理由: 日本語に引っ張られて日本語圏ソースへ偏るのを避けるため
  - 影響: 海外一次ソース到達率が上がる（ただしクエリ作成の手間は増える）
  - ロールバック: 条項を削除し、英語+日本語中心に戻す
  - Diff/Ref: N/A

---

## 2026-01
- （例）