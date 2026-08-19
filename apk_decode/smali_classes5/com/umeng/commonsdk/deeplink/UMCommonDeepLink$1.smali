.class Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink;->processUrlInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/deeplink/UMCommonDeepLinkCallback;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink;


# direct methods
.method public constructor <init>(Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink;Lcom/umeng/commonsdk/deeplink/UMCommonDeepLinkCallback;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$1;->c:Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$1;->a:Lcom/umeng/commonsdk/deeplink/UMCommonDeepLinkCallback;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$1;->b:Ljava/util/Map;

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
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$1;->a:Lcom/umeng/commonsdk/deeplink/UMCommonDeepLinkCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$1;->b:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLinkCallback;->onResolveDeepLink(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    return-void
.end method
