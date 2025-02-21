#include <tunables/global>

profile k8s-no-network flags=(attach_disconnected) {
  include <abstractions/base>

  # Разрешаем работу с файлами
  file,

  # Запрещаем доступ к сети
  deny network,
}
