import "Turbine";
import "Turbine.Gameplay";
import "CubePlugins.MyMounts.Mounts";

LocalPlayer = Turbine.Gameplay.LocalPlayer:GetInstance();
TrainedSkills = LocalPlayer:GetTrainedSkills();
TrainedSkillsCount = TrainedSkills:GetCount();

Turbine.Shell.WriteLine("Looking for mounts:");
local mountCount = 0;
for i=1, TrainedSkillsCount do
    local skill = TrainedSkills:GetItem(i);
    local skillInfo = skill:GetSkillInfo();
    local skillName = skillInfo:GetName();

    if (MOUNTS[skillName] ~= nil) then
        Turbine.Shell.WriteLine("Found mount: " .. skillName);
        mountCount = mountCount + 1;
    end

end
Turbine.Shell.WriteLine("Found " .. mountCount .. " mounts");