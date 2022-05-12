package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import elementary_web.entity.Notification;

public interface NotificationRepository extends JpaRepository<Notification, Integer> {

}