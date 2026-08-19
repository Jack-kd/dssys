.class public final Lcom/kwad/components/core/offline/b/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/offline/api/core/adInnerEc/IFullLive;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdLivePlayModule(Ljava/lang/String;)Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/c/b;->LW()Lcom/kwad/sdk/core/c/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/kwad/sdk/core/c/b;->getApplication()Landroid/app/Application;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lcom/kwad/components/core/innerEc/f;->a(Landroid/app/Application;Ljava/lang/String;)Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/IHostLivePlayer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
