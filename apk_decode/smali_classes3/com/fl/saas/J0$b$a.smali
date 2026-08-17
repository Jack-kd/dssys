.class Lcom/fl/saas/J0$b$a;
.super Lcom/fl/saas/adx/base/innterNative/AdAppInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/J0$b;->getAdAppInfo()Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/J0$b;


# direct methods
.method public constructor <init>(Lcom/fl/saas/J0$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/J0$b$a;->a:Lcom/fl/saas/J0$b;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/AdAppInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J0$b$a;->a:Lcom/fl/saas/J0$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/fl/saas/j;->C0:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0
.end method

.method public getAppPermissionUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J0$b$a;->a:Lcom/fl/saas/J0$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/fl/saas/j;->G0:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0
.end method

.method public getAppPrivacyUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J0$b$a;->a:Lcom/fl/saas/J0$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/fl/saas/j;->H0:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J0$b$a;->a:Lcom/fl/saas/J0$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/fl/saas/j;->E0:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0
.end method

.method public getFunctionUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J0$b$a;->a:Lcom/fl/saas/J0$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/fl/saas/j;->J0:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J0$b$a;->a:Lcom/fl/saas/J0$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/fl/saas/j;->D0:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0
.end method
