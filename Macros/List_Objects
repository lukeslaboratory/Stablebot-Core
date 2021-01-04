if job.build == null || #job.build.objects == 0
  echo "No objects"
else
  echo #job.build.objects,"objects on build plate"
  while iterations < #job.build.objects
    echo "Object",iterations,job.build.objects[iterations].name
    echo "  X",job.build.objects[iterations].x[0],"to",job.build.objects[iterations].x[1]
    echo "  Y",job.build.objects[iterations].y[0],"to",job.build.objects[iterations].y[1]
