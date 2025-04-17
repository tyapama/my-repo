
.PHONY: help
help:
	gh --help

# 実行中のワークフローを確認する
.PHONY: watch
watch:
	gh run watch

# 実行結果を確認する
.PHONY: view 
view:
	gh run view

# 手動でワークフローを実行する
.PHONY: manual-run
manual-run:
	gh workflow run manual.yml -f greeting=goodbye

.PHONY: lint
lint:
	docker run --rm -v "$(pwd):$(pwd)" -w "$(pwd)" rhysd/actionlint:latest