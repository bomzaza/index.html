# ใช้ base image node เวอร์ชันเบา
FROM node:20-alpine

# สร้าง directory สำหรับ app
WORKDIR /usr/src/app

# คัดลอกไฟล์ package.json และติดตั้ง dependencies
COPY package*.json ./
RUN npm install --production

# คัดลอก source code
COPY . .

# กำหนด port (Express ใช้ 3000)
EXPOSE 3000

# เริ่มรัน app
CMD ["npm", "start"]
