import ProjectDescription

let config = Config(
  cache: .cache(profiles: [.profile(name: "Simulator", configuration: "debug")]),
  generationOptions: [.disableAutogeneratedSchemes]
)
