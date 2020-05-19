server "sshd",
  user: 'root',
  ssh_options: {
    user: 'root',
    auth_methods: %w(password),
    password: "..root",
    port: 22,
  }
