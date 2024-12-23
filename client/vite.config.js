import { defineConfig } from "vite";
import react from "@vitejs/plugin-react-swc";


const backendTarget = "http://35.175.147.0:3000";
console.log("Proxy target:", backendTarget);


export default defineConfig({
  server: {
    host: "0.0.0.0", // Allow access from Docker
    proxy: {
      "/api": {
        target: backendTarget, // Proxy to backend
        changeOrigin: true, // Change the origin header to match the backend
        secure: false, // Allow non-HTTPS requests
      },
    },
  },
  plugins: [react()],
});
