Function mainify
{
    $currentBranch = git branch --show-current

    if ($currentBranch -notin "master", "main") {
        Write-Host "Please switch to master/main branch before running mainify"
        return
    }

    foreach ($branch in git branch)
    {
        if ($branch.Trim() -notin "* master", "* main", "master", "main") {
            git branch -d $branch.Trim()
        }
    }
}
