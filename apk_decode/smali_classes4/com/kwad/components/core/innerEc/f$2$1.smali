.class final Lcom/kwad/components/core/innerEc/f$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/innerEc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/f$2;->onSuccess(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Td:I

.field final synthetic Te:Lcom/kwad/components/core/innerEc/f$2;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/f$2;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/f$2$1;->Te:Lcom/kwad/components/core/innerEc/f$2;

    .line 2
    .line 3
    iput p2, p0, Lcom/kwad/components/core/innerEc/f$2$1;->Td:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/innerEc/InnerEcUserLoginBindInfo;)V
    .locals 4

    .line 1
    const-string v0, "SdkInnerECWrapper"

    .line 2
    .line 3
    const-string v1, "startAuthPage startCodebind onSuccess"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/f$2$1;->Te:Lcom/kwad/components/core/innerEc/f$2;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/f$2;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 11
    .line 12
    const-string v1, "app"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/kwad/components/core/innerEc/logger/a;->k(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/f$2$1;->Te:Lcom/kwad/components/core/innerEc/f$2;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/f$2;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 20
    .line 21
    const-string v2, "success"

    .line 22
    .line 23
    iget v3, p0, Lcom/kwad/components/core/innerEc/f$2$1;->Td:I

    .line 24
    .line 25
    invoke-static {v0, v2, v1, v3}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/local/a;->aQ(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/kwad/components/core/innerEc/e;->rf()Lcom/kwad/components/core/innerEc/e;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/innerEc/e;->b(Lcom/kwad/components/core/innerEc/InnerEcUserLoginBindInfo;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/f$2$1;->Te:Lcom/kwad/components/core/innerEc/f$2;

    .line 39
    .line 40
    iget-object v0, p1, Lcom/kwad/components/core/innerEc/f$2;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    iput-boolean v1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->isDoAuth:Z

    .line 44
    .line 45
    iget-object p1, p1, Lcom/kwad/components/core/innerEc/f$2;->dK:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {p1, v0}, Lcom/kwad/components/core/innerEc/qcpx/b;->h(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/f$2$1;->Te:Lcom/kwad/components/core/innerEc/f$2;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/kwad/components/core/innerEc/f$2;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->fm(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    invoke-static {}, Lcom/kwad/sdk/core/c/b;->LW()Lcom/kwad/sdk/core/c/b;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/kwad/sdk/core/c/b;->getApplication()Landroid/app/Application;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b;->c(Landroid/app/Application;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/f$2$1;->Te:Lcom/kwad/components/core/innerEc/f$2;

    .line 72
    .line 73
    iget-object v0, p1, Lcom/kwad/components/core/innerEc/f$2;->dK:Landroid/content/Context;

    .line 74
    .line 75
    iget-object v1, p1, Lcom/kwad/components/core/innerEc/f$2;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/kwad/components/core/innerEc/f$2;->Rx:Lcom/kwad/components/core/e/d/a$a;

    .line 78
    .line 79
    invoke-static {v0, v1, p1}, Lcom/kwad/components/core/innerEc/live/b;->b(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/core/e/d/a$a;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/f$2$1;->Te:Lcom/kwad/components/core/innerEc/f$2;

    .line 84
    .line 85
    iget-object v0, p1, Lcom/kwad/components/core/innerEc/f$2;->dK:Landroid/content/Context;

    .line 86
    .line 87
    iget-object p1, p1, Lcom/kwad/components/core/innerEc/f$2;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 88
    .line 89
    invoke-static {v0, p1}, Lcom/kwad/components/core/innerEc/f;->g(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final rc()V
    .locals 4

    .line 1
    const-string v0, "SdkInnerECWrapper"

    .line 2
    .line 3
    const-string v1, "startAuthPage startCode bind onFail"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/f$2$1;->Te:Lcom/kwad/components/core/innerEc/f$2;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/f$2;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 11
    .line 12
    iget v1, p0, Lcom/kwad/components/core/innerEc/f$2$1;->Td:I

    .line 13
    .line 14
    const-string v2, "fail"

    .line 15
    .line 16
    const-string v3, "app"

    .line 17
    .line 18
    invoke-static {v0, v2, v3, v1}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/f$2$1;->Te:Lcom/kwad/components/core/innerEc/f$2;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/f$2;->Tc:Lcom/kwad/components/core/innerEc/a/a;

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/kwad/components/core/innerEc/a/a;->rn()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/f$2$1;->Te:Lcom/kwad/components/core/innerEc/f$2;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/f$2;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 31
    .line 32
    const/16 v1, 0x7d1

    .line 33
    .line 34
    invoke-static {v0, v1, v2}, Lcom/kwad/components/core/innerEc/logger/a;->f(Lcom/kwad/sdk/core/response/model/AdTemplate;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/f$2$1;->Te:Lcom/kwad/components/core/innerEc/f$2;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/f$2;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 40
    .line 41
    invoke-static {v0, v3}, Lcom/kwad/components/core/innerEc/local/a;->f(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
