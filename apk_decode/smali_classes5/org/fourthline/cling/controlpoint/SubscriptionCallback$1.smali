.class Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;
.super Lorg/fourthline/cling/model/gena/LocalGENASubscription;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->establishLocalSubscription(Lorg/fourthline/cling/model/meta/LocalService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/controlpoint/SubscriptionCallback;Lorg/fourthline/cling/model/meta/LocalService;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;-><init>(Lorg/fourthline/cling/model/meta/LocalService;Ljava/lang/Integer;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public ended(Lorg/fourthline/cling/model/gena/CancelReason;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->setSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    .line 11
    .line 12
    invoke-virtual {v1, p0, p1, v2}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->ended(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/gena/CancelReason;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1
.end method

.method public established()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    .line 5
    .line 6
    invoke-virtual {v1, p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->setSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    .line 10
    .line 11
    invoke-virtual {v1, p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->established(Lorg/fourthline/cling/model/gena/GENASubscription;)V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw v1
.end method

.method public eventReceived()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v3, "Local service state updated, notifying callback, sequence is: "

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/fourthline/cling/model/gena/GENASubscription;->getCurrentSequence()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    .line 31
    .line 32
    invoke-virtual {v1, p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->eventReceived(Lorg/fourthline/cling/model/gena/GENASubscription;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->incrementSequence()V

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw v1
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->setSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    .line 11
    .line 12
    invoke-virtual {v1, v2, v2, p1}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->failed(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/Exception;)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1
.end method
