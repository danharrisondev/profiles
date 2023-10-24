Function mainify
{
    $branches = git branch
    foreach ($branch in $branches)
    {
        if ($branch -ne "* master") {
            git branch -D $branch.Trim()
        }
    }
}
