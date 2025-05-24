### **Initialize a Repository**

```bash
git init

```

Creates a new Git repo in the current directory. You can now start tracking files.

**Exercise:**

```bash
mkdir myproject && cd myproject
git init

```

---

### **Track a File**

```bash
git add filename

```

Moves the file to the staging area.

**Exercise:**

```bash
echo "Hello Git" > first.md
git status        # shows file is untracked
git add first.md  # file is now staged

```

---

### **Save a Snapshot (Commit)**

```bash
git commit -m "Add first.md"

```

Creates a saved version of your project.

Each commit gets a **unique ID (SHA)** and includes:

- What changed
- When it changed
- Who changed it

---

### **Check File Status**

```bash
git status

```

Tells you:

- What has changed
- What’s staged
- What’s not tracked

Run it often.

---

### **View History**

```bash
git log

```

Shows the history of commits.

Use this enhanced view for a visual graph:

```bash
git log --graph --decorate --oneline

```

---

### **What Is a Branch?**

A branch is a separate line of development.

Use branches to:

- Work on features
- Fix bugs
- Experiment safely

### **Create and Switch to a Branch**

```bash
git checkout -b feature

```

---

### **Commit Work in a Branch**

```bash
echo "Feature code" > feature.txt
git add feature.txt
git commit -m "Add feature.txt"

```

---

### **Merge Back into Main**

Switch to main and merge your changes:

```bash
git checkout main
git merge feature

```

---

### **Handling Merge Conflicts**

Conflicts happen when the same line in a file is changed in two branches.

Git will show conflict markers like:

```
<<<<<<< HEAD
this is from main
=======
this is from feature
>>>>>>> feature

```

Fix the conflict manually, then:

```bash
git add filename
git commit

```