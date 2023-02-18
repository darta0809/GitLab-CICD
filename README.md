# GitLab-CICD

* jacoco 產出測試報表

### CI 包含了

- compile
  - 基本 maven
- format validation
  - 使用 maven plugin
- test
  - 基本 maven 並透過 jacoco 產報表
- package
  - 基本 maven
- deploy-container
  - build docker image 並 push 到 gitlab Container Registry
- publish
  - 從 gitlab Container Registry pull 並 push 到 GCR
- deploy
  - 從 GCR 部屬到 GKE

### GitLab CI 額外服務

其中 License Compliance、Dependency-Scanning 需要付費會員才行

* Code-Quality.gitlab-ci.yml  
* SAST.gitlab-ci.yml  
* Dependency-Scanning.gitlab-ci.yml
* License-Scanning.gitlab-ci.yml

Code-Quality 用來協助檢查程式碼品質的服務  
SAST 用來檢查程式碼是否有漏洞的服務  
License Compliance 用來檢查是否有可能是否相符的服務  
Dependency-Scanning 用來檢查相依函式庫是否有漏洞的服務  
