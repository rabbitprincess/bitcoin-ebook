> 모두가 X를 안다는 사실로는 충분하지 않습니다. 모두가 X를 안다는 사실도 모두가 알아야 하고요, 또 모두가 X를 안다는 사실을 우리 모두가 다 안다는 사실도 전원이 알아야 하지요. 이는 비잔틴 장군의 문제처럼, 분산 데이터 시스템에서 오래된 난제입니다.

# 분산 시스템
분산 시스템은 노드들이 물리적으로 분리된 환경에서 합의하여 동일한 시스템처럼 동작하는 것을 목표로 합니다. 특히 비트코인과 같이 리더 없는 분산 시스템은 컴퓨터 공학에서 가장 어려운 문제 중 하나로 여겨집니다.

## 리더 없는 분산 시스템의 어려움
1. 복잡성과 비효율성
리더가 없는 시스템에서는 모든 노드가 동등한 역할을 하며, 합의를 이루기 위해 모든 노드 간의 협력과 통신이 필요합니다. 리더가 있는 시스템에서는 리더가 결정을 내리고 다른 노드들이 이를 따르기 때문에 합의가 상대적으로 간단합니다. 하지만 리더 없는 시스템에서는 모든 노드가 서로 통신해야 하므로 메시지 전달 비용이 기하급수적으로 증가합니다.

2. 결정 지연
리더 없는 시스템에서는 모든 노드 간 동등한 합의가 이루어져야 하기 때문에, 결정이 지연될 가능성이 높습니다. 특히 네트워크 지연이나 특정 노드의 장애로 인해 모든 노드의 합의가 지연될 수 있습니다.

3. 내결함성(Fault Tolerance)
리더 없는 시스템에서는 일부 노드가 잘못된 정보를 전달하거나 고장 상태에 빠지더라도 시스템이 정상적으로 동작해야 합니다. 그러나 이를 탐지하고 해결하는 과정은 매우 복잡합니다.

## FLP Impossibility
FLP Impossibility 는 분산 시스템의 한계를 이론적으로 정의한 사례입니다. 이는 Fischer, Lynch, Paterson이 1985년에 발표한 연구에서 제안되었으며, 비동기 분산 시스템(asynchronous distributed system)에서 아래 세 가지 속성을 동시에 달성할 수 없음을 설명합니다.

1. Safety: "문제 없는 노드 사이에서는 그 합의 과정이 어찌되었든 결과적으로 절대 잘못된 합의가 이루어지지 않는다" 를 보장해야 합니다.

2. Liveness: "문제없는 노드 사이에서는 반드시 언젠가는 합의가 일어나야 한다" 를 보장해야 합니다.

3. Fault Tolerance: "노드 중 일부가 잘못된 정보를 전달하거나, 잘못된 상태에 빠져도 전체 시스템이 정상적으로 동작해야 한다" 를 보장해야 합니다.

​수많은 수학자들이 이 문제를 풀기 위해 머리를 싸맸지만, 결국 한 명의 배신자만 있다고 해도, Safety 와 Liveness 를 모두 지키는 것은 불가능하기 때문에, FLP Impossibility 는 분산 시스템의 한계로 여겨졌습니다. 이를 잘 설명하고 있는 예시가 바로 비잔틴 장군의 문제입니다.