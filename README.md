# Agent Config

Gemini CLI や Claude Code といった AI エージェントの行動指針とコーディング規約を管理する中央リポジトリです。

## 特徴
- **Pillars of AGENTS.md**: ハルシネーション監視、根拠なき断定の禁止など、AI の信頼性を担保する 6つの柱。
- **Readable Code Integrated**: 『リーダブルコード』全15章のエッセンスを `engineering_en.md` に完全統合。
- **Self-Correction Protocol**: AI 自身による厳格な自己チェック（ハルシネーションチェック）手順を規定。

## 構成
- `GEMINI.md`: 起動時に読み込まれるメインの指示書。
- `docs/modes/`: 各モード（Research, Engineering, Thinking, Quick）の個別ルール。
- `ERROR_LOG.md`: 自己監視の記録と改善の軌跡。
- `deploy.sh`: 最新のルールを各プロジェクトへ同期するスクリプト。

## 運用
変更を加えた後は `./deploy.sh` を実行し、各プロジェクトに最新ルールを配布してください。
