Function mainify
{
    foreach ($branch in git branch)
    {
        if ($branch -notin '* master', '* main') {
            git branch -D $branch.Trim()
        }
    }
}
