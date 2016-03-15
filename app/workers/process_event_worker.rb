class ProcessEventWorker < SidekiqWorker

  def perform(params)
    tag = Tag.find(params['id'])
    project = tag.project
    project.process_event(params)
  end

end