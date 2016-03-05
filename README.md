## Packer Vagrant Boxes

### Installing Packer

- In MacOSX, run:

  ```
  brew tap homebrew/bundle
  brew bundle
  ```

- In other OSes, follow instructions https://www.packer.io/docs/installation.html

### Generating a box

Example:

```
cd debian-8.3.0-amd64
packer build debian-8.3.0-amd64.json
```
