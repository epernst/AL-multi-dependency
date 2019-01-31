$containerName = 'Sandbox'

$Apps = [Ordered]@{}
$Apps = @{AppName= "ALProject3"; Version="1.0.0.0"},@{AppName= "ALProject2"; Version="1.0.0.0"},@{AppName= "ALProject1"; Version="1.0.0.0"}

$Apps | ForEach-Object { Unpublish-NAVContainerApp -containerName $containerName -appName $_.AppName -Version $_.Version -unInstall -ErrorAction Continue }
