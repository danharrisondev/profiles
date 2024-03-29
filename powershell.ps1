Function mainify
{
    param([switch]$force)

    $currentBranch = git branch --show-current

    if ($currentBranch -notin "master", "main") {
        Write-Host "Please switch to master/main branch before running mainify"
        return
    }

    foreach ($branch in git branch)
    {
        if ($branch.Trim() -notin "* master", "* main") {
            if ($force) {
                git branch -D $branch.Trim()
            } else {
                git branch -d $branch.Trim()
            }
        }
    }
}
