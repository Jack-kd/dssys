.class Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field volatile e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$a;->e:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$a;->a:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$a;->b:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$a;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const-string p4, "url"

    .line 20
    .line 21
    :cond_0
    iput-object p4, p0, Lcom/umeng/commonsdk/deeplink/UMCommonDeepLink$a;->d:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method
