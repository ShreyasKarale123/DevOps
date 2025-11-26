# DevOps
Name: Shreyas Karale
PRN: 1292240170
Batch: MCA Management Batch B


# 1. My 5 Chosen DevOps Concepts

**1.Lean DevOps:** I learned from the course slides that Lean DevOps is a philosophy focused on "velocity and simplicity." It combines culture, best practices, and automation to speed up delivery. It treats the process like a cycle involving planning, coding, building, and monitoring to eliminate waste.

**2.Distributed Version Control (DVCS):** Unlike the old centralized systems where you needed a server to work, Git is a Distributed VCS. This means I have a complete copy of the history on my local machine or Codespace. I can work offline and then push my changes to the server later, which makes it faster and safer than centralized systems.

**3.Containerization:** The notes define this as resource isolation at the OS level rather than the machine level. It is lighter than a full Virtual Machine because it shares the OS kernel but keeps files and permissions separate. This is exactly what I did with the Alpine image—it was a lightweight isolated environment.

**4. Continuous Integration (CI):** This is the practice where we merge code changes frequently. The course material mentions that every time code is committed, it should be built and tested automatically. This prevents the it works on my machine problem that happens when developers and operations teams don't communicate.

**5. Infrastructure as Code (IaC):** Instead of manually configuring servers, we use machine-readable definition files. Writing a Dockerfile was my first experience with this—I defined the OS and file structure in code rather than clicking buttons.


# 2. How I Completed This Assignment

I completed this assignment using GitHub Codespaces to simulate a Linux environment.


**1. Environment Setup:** I initialized a Git repository as my workspace. Since I didn't have a local Linux setup, I used the terminal in Codespaces, which gave me access to the shell.

**2. Writing the Dockerfile:**
I create a file named `Dockerfile`.
I chose alpin as the base.
To satisfy the Linux operations requirement, I used the `RUN` instruction to execute standard commands like `mkdir` and `echo`.

**3. Building the Image:** I used the command `$ docker build -t shreyaskarale123/devops:v1 .`. I made sure to use my Docker Hub username so the tag would be correct.

**4. Pushing to Registry:** After logging in with `docker login`, I pushed the image to Docker Hub.

**5. Version Control:** Finally, I followed the Git workflow from the notes: `git add`, `git commit -m "message"`, and `git push` to save my work to GitHub.

**Commands Used:**
```bash

docker login

docker build -t shreyaskarale123/devops:v1 .

$ docker push shreyaskarale123/devops:v1

## My Terminal Output

@ShreyasKarale123 ➜ /workspaces/DevOps (main) $ docker push shreyaskarale123/devops:v1
The push refers to repository [docker.io/shreyaskarale123/devops]
25f08886c0e0: Pushed 
5f70bf18a086: Pushed 
69db6b5abc94: Pushed 
121ec11986ae: Pushed 
256f393e029f: Mounted from library/alpine 
v1: digest: sha256:2e912b61861b88515ac31b8053a5a24f51a4e54f5af209e3abea332f64c18684 size:1355
```

# 3. Learning Output

Linux: I practiced using the shell interaction and basic commands like ls, mkdir, and redirection inside the Dockerfile. It showed me that a container is basically just a Linux environment that I can script.

Git vs. GitHub: I clearly understood the difference mentioned in the notes: Git is the tool I used in the terminal to track my changes, while GitHub is just the website where I synchronized my repository.

DevOps Culture: The assignment forced me to bridge Dev and Ops, which is the core goal of DevOps—breaking the silo between development and operations.
