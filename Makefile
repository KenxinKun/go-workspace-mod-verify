.PHONY: all
all: workspace-sync workspace-tidy workspace-verify

.PHONY: workspace-sync
workspace-sync:
	go work sync

.PHONY: workspace-tidy
workspace-tidy:
	cd mod1 && go mod tidy
	cd mod2 && go mod tidy

.PHONY: workspace-verify
workspace-verify:
	go mod verify
