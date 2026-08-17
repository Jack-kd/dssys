.class Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/os/Handler;

.field final c:Lcom/umeng/commonsdk/deeplink/InstallParamsCallback;

.field volatile d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/umeng/commonsdk/deeplink/InstallParamsCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$b;->d:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$b;->a:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$b;->b:Landroid/os/Handler;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$b;->c:Lcom/umeng/commonsdk/deeplink/InstallParamsCallback;

    .line 12
    .line 13
    return-void
.end method
