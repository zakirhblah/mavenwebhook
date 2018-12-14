From alpine:latest
RUN apk  update
RUN apk add openssh
RUN adduser -g "Student User" -D student && mkdir /home/student/.ssh
RUN echo "student:student" | chpasswd
Add authorized_keys /home/student/.ssh
RUN chown -R student.student /home/student
RUN chmod 700 /home/student/.ssh && chmod 600 /home/student/.ssh/authorized_keys 
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -q -N ""
EXPOSE 22
CMD ["/user/sbin/sshd", "-D"]

