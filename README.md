# NES-2026
Annual VLSI Summit on Nanotechnology and Embedded System (NES) 

- **DATE**: Jan 30-31, 2026
- **VENUE**: Silicon University, Odisha (LT-1)
- **AGENDA**:
  - **DAY-1** (Jan 30, Fri): Expert talks and Panel discussion.
  - **DAY-2** (Jan 31, Sat): Hands-on workshop; CMOS Standard-Cell design and RTL-to-GDS using open-source PDK and EDA (SKY130, xschem, ngspice, magic and LibreLane)
- `https://silicon-nes.netlify.app`

# HOWTO: Docker-based OSIC-TOOLS on Windows 11 (10)

This section describes the steps to install the [IIC-OSIC-TOOLS](https://github.com/iic-jku/iic-osic-tools) from [ Department for Integrated Circuits (ICD), Johannes Kepler University (JKU)](https://iic.jku.at/) required for the workshop on **Day-2 (Sat)**. The docker container has a lot of open-source tools including the ones required for the workshop namely: `xschem`, `ngspice`, `magic`, and `Librelane` .

- Install **WSL** using command line in Terminal (or Powershell) as admin:
  - `wsl --install`
- Install **Ubuntu 24.04**:
  - `wsl --install -d Ubuntu-24.04`
  - During installation you will be asked for _username_ and _password_ , this will be your admin user so don't lose it!
- Download and install [**Docker Desktop**](https://docs.docker.com/desktop/setup/install/windows-install/). Create a free user and login to the _Dashboard_
  - During installation, if asked, select: ✅ Use WSL 2 instead of Hyper-V (recommneded)
- Download the _startup_ script from this repo: `start_nes_x.bat`
- Start the docker shell from the Terminal: `./start_nes_x.bat`
  - **NOTE** The image is 4GB! so takes a while for the first time.
- When you restart your device, you need to **restart** the _docker engine_ by starting the **Docker Desktop**.
- When running `./start_nes_x.bat` subsequently, you will get a message saying the "Container iic-osic-tools_xserver exists. Restart with
    `docker start iic-osic-tools_xserver` . So use that command to start the container.  

