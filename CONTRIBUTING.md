# Contributing to Claude Agent Borg

Thanks for your interest in contributing!

## How to Contribute

### Reporting Issues

- Use GitHub Issues for bug reports and feature requests
- Include clear reproduction steps for bugs
- Describe your use case for feature requests

### Pull Requests

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Test with your own Claude Code setup
5. Commit using conventional commits:
   - `feat:` for new features
   - `fix:` for bug fixes
   - `docs:` for documentation updates
   - `refactor:` for code improvements
6. Push to your fork
7. Open a Pull Request

### Code Style

- Follow the existing agent structure
- Keep sections clearly delineated with XML-style tags
- Document new phases or capabilities thoroughly
- Preserve the "Borg voice" in messaging

### Testing

Before submitting:
- Test the agent with at least one external Claude setup
- Verify infrastructure compatibility checks work
- Ensure convention mappings are applied correctly
- Check that assimilation reports are generated properly

## Development Setup

```bash
# Clone your fork
git clone https://github.com/YOUR_USERNAME/claude-agent-borg.git

# Copy to Claude Code for testing
cp agents/borg.md ~/.claude/agents/

# Test with an external system
# (in Claude Code)
Assimilate ~/path/to/test-system
```

## Questions?

Open a GitHub Discussion or Issue. We're happy to help!
