# AGENTS.md
# Maintaining and Extending the Kegtools Ecosystem

## 1. **Agent Roles**
Agents must:
- Use **kegmake** for new package creation
- Employ **kegbuild** for packaging
- Utilize **kegify** for binary wrapping
- Maintain consistency with project structure

## 2. **Core Workflow**

### 2.1 Define Package Requirements
*Use `kegify` for binary wrapping:*
```bash
kegify $(basename myapp) # Wraps myapp into myapp.keg
```

### 2.2 Structure Package Files
*Use `kegmake` for organization:*
```bash
mkdir myapp
kegmake myapp my-app-1.0
```
Organizes files into:
- `lib/` - Shared libraries
- `icons/` - Application icons
- `data/` - Application data files
- `desktop/` - Desktop XML files
- `bin/` - Executable binaries

### 2.3 Build and Package
*Use `kegbuild` for final packaging:*
```bash
kegbuild my-app-1.0 build myapp-1.0.keg
```

## 3. **Namespace Management**
```bash
# Define package architecture
kegmake my-app 1.1 # Creates directory structure
```

## 4. **Binary Wrapping (kegify)**
### Usage:
```bash
kegify binary_name [output_name]
```
Options:
- No suffix: Uses `binary_name.keg`
- With suffix: `kegify binary_name myapp` creates `myapp.keg`

## 5. **Command Reference**
### `kegbuild`
```bash
kegbuildsource_dir> <keg_dir> <output_file>
```
Zips all contents into package.

### `kegify`
```bash
kegifybinary> [output_name]
```
Wraps single binary into package.

### `kegmake`
```bash
kegmakedir>keg_name>
```
Organizes source files into package structure.

## 6. **Quality Control Checklist**
Before packaging:
1. [ ] Validate all dependencies are included
2. [ ] Verify file permissions
3. [ ] Confirm version consistency
4. [ ] Test package integrity locally

## 7. **Homebrew Tools Integration**
- **ppers** - Link debugging
- **kastal** - System monitoring
- **tstar** - Task automation

## 8. **Cross-Platform Considerations**
When packaging ChromeOS tools:
1. Ensure compatibility with Xephyr
2. Test TLS certificate handling
3. Validate GPU acceleration support

## 9. **Update Strategy**
For existing packages:
1. Modify `kegname.txt` version entry
2. Rebuild with updated binary/files
3. Validate test cases
4. Perform fresh install test