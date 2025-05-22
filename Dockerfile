# 베이스 이미지로 Node.js 최신 LTS 버전 사용
FROM node:lts-alpine

# 작업 디렉토리 설정
WORKDIR /app

# package.json 및 package-lock.json 복사
COPY package*.json ./

# 의존성 설치
RUN npm install

# 소스 코드 복사
COPY . .

# 개발 서버 실행을 위한 포트 노출
EXPOSE 3000

# 컨테이너 시작 시 개발 서버 실행 명령어
CMD [ "npm", "start" ]