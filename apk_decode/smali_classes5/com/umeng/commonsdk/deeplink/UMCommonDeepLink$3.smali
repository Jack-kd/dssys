.class final Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink;->callbackInstallSuccess(Landroid/os/Handler;Lcom/umeng/commonsdk/deeplink/InstallParamsCallback;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/deeplink/InstallParamsCallback;

.field final synthetic b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/umeng/commonsdk/deeplink/InstallParamsCallback;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$3;->a:Lcom/umeng/commonsdk/deeplink/InstallParamsCallback;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$3;->b:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$3;->a:Lcom/umeng/commonsdk/deeplink/InstallParamsCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$3;->b:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/umeng/commonsdk/deeplink/InstallParamsCallback;->onSuccess(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    return-void
.end method
