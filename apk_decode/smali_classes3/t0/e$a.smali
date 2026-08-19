.class public Lt0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/fourthline/cling/registry/RegistryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt0/e;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lt0/e;


# direct methods
.method public constructor <init>(Lt0/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt0/e$a;->a:Lt0/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public afterShutdown()V
    .locals 0

    .line 1
    return-void
.end method

.method public beforeShutdown(Lorg/fourthline/cling/registry/Registry;)V
    .locals 0

    .line 1
    return-void
.end method

.method public localDeviceAdded(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lt0/e$a;->a:Lt0/e;

    .line 2
    .line 3
    invoke-static {p2, p1}, Lt0/e;->l(Lt0/e;Lorg/fourthline/cling/registry/Registry;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public localDeviceRemoved(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lt0/e$a;->a:Lt0/e;

    .line 2
    .line 3
    invoke-static {p2, p1}, Lt0/e;->l(Lt0/e;Lorg/fourthline/cling/registry/Registry;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public remoteDeviceAdded(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lt0/e$a;->a:Lt0/e;

    .line 2
    .line 3
    invoke-static {p2, p1}, Lt0/e;->l(Lt0/e;Lorg/fourthline/cling/registry/Registry;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public remoteDeviceDiscoveryFailed(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lt0/e$a;->a:Lt0/e;

    .line 2
    .line 3
    invoke-static {p2, p1}, Lt0/e;->l(Lt0/e;Lorg/fourthline/cling/registry/Registry;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public remoteDeviceDiscoveryStarted(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0

    .line 1
    return-void
.end method

.method public remoteDeviceRemoved(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lt0/e$a;->a:Lt0/e;

    .line 2
    .line 3
    invoke-static {p2, p1}, Lt0/e;->l(Lt0/e;Lorg/fourthline/cling/registry/Registry;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public remoteDeviceUpdated(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lt0/e$a;->a:Lt0/e;

    .line 2
    .line 3
    invoke-static {p2, p1}, Lt0/e;->l(Lt0/e;Lorg/fourthline/cling/registry/Registry;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
