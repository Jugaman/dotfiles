local wezterm = require("wezterm")

local SSH_AUTH_SOCK = os.getenv("SSH_AUTH_SOCK")
local bw_ssh_agent_sock = string.format("%s/.bitwarden/ssh-agent.sock", wezterm.home_dir)

return {
	default_ssh_auth_sock = (SSH_AUTH_SOCK == bw_ssh_agent_sock and #wezterm.glob(bw_ssh_agent_sock) == 1)
			and bw_ssh_agent_sock
		or nil,
}
