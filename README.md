# Hetzner Dedicated Server Drive Shred


This bash script let's you quickly/easily shred the drives on your hetzner server before returning it.

This command is highly destructive. There are no prompts. It immediately just starts erasing your data:

```bash
curl https://raw.githubusercontent.com/venkatamutyala/hetzner-dedicated-server-drive-shred/refs/heads/main/shred.sh | bash
```

Note: This may take a while. I recommend running it within tmux.
