function simulateAccess(type) {
  const status = document.getElementById("status");
  if (type === "bastion") {
    status.innerText = "✅ Bastion Access: Success (from Public Subnet)";
  } else if (type === "vpn") {
    status.innerText = "🔐 VPN Access: Tunnel Established (Secure)";
  } else if (type === "blocked") {
    status.innerText = "❌ Hacker Attempt Blocked: Access Denied by Security Group";
  }
}
