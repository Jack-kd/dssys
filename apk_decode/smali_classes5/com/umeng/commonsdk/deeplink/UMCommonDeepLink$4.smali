.class final Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink;->callbackInstallFailure(Landroid/os/Handler;Lcom/umeng/commonsdk/deeplink/InstallParamsCallback;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/deeplink/InstallParamsCallback;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/umeng/commonsdk/deeplink/InstallParamsCallback;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$4;->a:Lcom/umeng/commonsdk/deeplink/InstallParamsCallback;

    .line 2
    .line 3
    iput p2, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$4;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$4;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$4;->a:Lcom/umeng/commonsdk/deeplink/InstallParamsCallback;

    .line 2
    .line 3
    iget v1, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$4;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$4;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lcom/umeng/commonsdk/deeplink/InstallParamsCallback;->onFailure(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    return-void
.end method
