const path = require('path');

module.exports = {
  // Đường dẫn nơi chứa các hợp đồng biên soạn
  contracts_build_directory: path.join(__dirname, "client/src/contracts"),
  networks: {
    development: {
      // Địa chỉ host cho mạng phát triển
      host: "127.0.0.1",
      // Cổng cho mạng phát triển
      port: 7545,
      // ID mạng, dùng để xác định mạng
      network_id: "*" // Tất cả các mạng đều có thể kết nối
    }
  },
  compilers: {
    solc: {
      // Phiên bản của trình biên dịch Solidity
      version: "0.8.0" // Sử dụng phiên bản 0.8.0 của Solidity
    }
  }
};