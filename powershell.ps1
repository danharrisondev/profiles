Function mainify
{
    foreach ($branch in git branch)
    {
        if ($branch -ne "* master") {
            git branch -D $branch.Trim()
        }
    }
}
