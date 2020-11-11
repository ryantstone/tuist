import Foundation
import TSCBasic
@testable import TuistCore

final class MockGraphTraverser: GraphTraversing {

    var invokedTarget = false
    var invokedTargetCount = 0
    var invokedTargetParameters: (path: AbsolutePath, name: String)?
    var invokedTargetParametersList = [(path: AbsolutePath, name: String)]()
    var stubbedTargetResult: Target!

    func target(path: AbsolutePath, name: String) -> Target? {
        invokedTarget = true
        invokedTargetCount += 1
        invokedTargetParameters = (path, name)
        invokedTargetParametersList.append((path, name))
        return stubbedTargetResult
    }

    var invokedTargets = false
    var invokedTargetsCount = 0
    var invokedTargetsParameters: (path: AbsolutePath, Void)?
    var invokedTargetsParametersList = [(path: AbsolutePath, Void)]()
    var stubbedTargetsResult: Set<Target>! = []

    func targets(at path: AbsolutePath) -> Set<Target> {
        invokedTargets = true
        invokedTargetsCount += 1
        invokedTargetsParameters = (path, ())
        invokedTargetsParametersList.append((path, ()))
        return stubbedTargetsResult
    }

    var invokedDirectTargetDependencies = false
    var invokedDirectTargetDependenciesCount = 0
    var invokedDirectTargetDependenciesParameters: (path: AbsolutePath, name: String)?
    var invokedDirectTargetDependenciesParametersList = [(path: AbsolutePath, name: String)]()
    var stubbedDirectTargetDependenciesResult: Set<Target>! = []

    func directTargetDependencies(path: AbsolutePath, name: String) -> Set<Target> {
        invokedDirectTargetDependencies = true
        invokedDirectTargetDependenciesCount += 1
        invokedDirectTargetDependenciesParameters = (path, name)
        invokedDirectTargetDependenciesParametersList.append((path, name))
        return stubbedDirectTargetDependenciesResult
    }

    var invokedAppExtensionDependencies = false
    var invokedAppExtensionDependenciesCount = 0
    var invokedAppExtensionDependenciesParameters: (path: AbsolutePath, name: String)?
    var invokedAppExtensionDependenciesParametersList = [(path: AbsolutePath, name: String)]()
    var stubbedAppExtensionDependenciesResult: Set<Target>! = []

    func appExtensionDependencies(path: AbsolutePath, name: String) -> Set<Target> {
        invokedAppExtensionDependencies = true
        invokedAppExtensionDependenciesCount += 1
        invokedAppExtensionDependenciesParameters = (path, name)
        invokedAppExtensionDependenciesParametersList.append((path, name))
        return stubbedAppExtensionDependenciesResult
    }

    var invokedResourceBundleDependencies = false
    var invokedResourceBundleDependenciesCount = 0
    var invokedResourceBundleDependenciesParameters: (path: AbsolutePath, name: String)?
    var invokedResourceBundleDependenciesParametersList = [(path: AbsolutePath, name: String)]()
    var stubbedResourceBundleDependenciesResult: Set<Target>! = []

    func resourceBundleDependencies(path: AbsolutePath, name: String) -> Set<Target> {
        invokedResourceBundleDependencies = true
        invokedResourceBundleDependenciesCount += 1
        invokedResourceBundleDependenciesParameters = (path, name)
        invokedResourceBundleDependenciesParametersList.append((path, name))
        return stubbedResourceBundleDependenciesResult
    }

    var invokedTestTargetsDependingOn = false
    var invokedTestTargetsDependingOnCount = 0
    var invokedTestTargetsDependingOnParameters: (path: AbsolutePath, name: String)?
    var invokedTestTargetsDependingOnParametersList = [(path: AbsolutePath, name: String)]()
    var stubbedTestTargetsDependingOnResult: Set<Target>! = []

    func testTargetsDependingOn(path: AbsolutePath, name: String) -> Set<Target> {
        invokedTestTargetsDependingOn = true
        invokedTestTargetsDependingOnCount += 1
        invokedTestTargetsDependingOnParameters = (path, name)
        invokedTestTargetsDependingOnParametersList.append((path, name))
        return stubbedTestTargetsDependingOnResult
    }

    var invokedDirectStaticDependencies = false
    var invokedDirectStaticDependenciesCount = 0
    var invokedDirectStaticDependenciesParameters: (path: AbsolutePath, name: String)?
    var invokedDirectStaticDependenciesParametersList = [(path: AbsolutePath, name: String)]()
    var stubbedDirectStaticDependenciesResult: Set<GraphDependencyReference>! = []

    func directStaticDependencies(path: AbsolutePath, name: String) -> Set<GraphDependencyReference> {
        invokedDirectStaticDependencies = true
        invokedDirectStaticDependenciesCount += 1
        invokedDirectStaticDependenciesParameters = (path, name)
        invokedDirectStaticDependenciesParametersList.append((path, name))
        return stubbedDirectStaticDependenciesResult
    }

    var invokedAppClipsDependency = false
    var invokedAppClipsDependencyCount = 0
    var invokedAppClipsDependencyParameters: (path: AbsolutePath, name: String)?
    var invokedAppClipsDependencyParametersList = [(path: AbsolutePath, name: String)]()
    var stubbedAppClipsDependencyResult: Target!

    func appClipsDependency(path: AbsolutePath, name: String) -> Target? {
        invokedAppClipsDependency = true
        invokedAppClipsDependencyCount += 1
        invokedAppClipsDependencyParameters = (path, name)
        invokedAppClipsDependencyParametersList.append((path, name))
        return stubbedAppClipsDependencyResult
    }
    
}
