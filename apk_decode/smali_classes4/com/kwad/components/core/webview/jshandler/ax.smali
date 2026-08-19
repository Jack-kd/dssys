.class public final Lcom/kwad/components/core/webview/jshandler/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/webview/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/core/webview/jshandler/ax$b;,
        Lcom/kwad/components/core/webview/jshandler/ax$a;
    }
.end annotation


# instance fields
.field private arq:Lcom/kwad/components/core/webview/jshandler/ax$a;

.field private arr:Lcom/kwad/components/core/webview/jshandler/ax$b;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/webview/jshandler/ax$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/kwad/components/core/webview/jshandler/ax;->arq:Lcom/kwad/components/core/webview/jshandler/ax$a;

    return-void
.end method

.method public constructor <init>(Lcom/kwad/components/core/webview/jshandler/ax$b;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/kwad/components/core/webview/jshandler/ax;->arr:Lcom/kwad/components/core/webview/jshandler/ax$b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/c/c;)V
    .locals 5
    .param p2    # Lcom/kwad/sdk/core/webview/c/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    new-instance v0, Lcom/kwad/components/core/webview/tachikoma/c/i;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/kwad/components/core/webview/tachikoma/c/i;-><init>()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    new-instance p1, Lcom/kwad/components/core/webview/jshandler/ax$1;

    .line 27
    .line 28
    invoke-direct {p1, p0, v0, p2}, Lcom/kwad/components/core/webview/jshandler/ax$1;-><init>(Lcom/kwad/components/core/webview/jshandler/ax;Lcom/kwad/components/core/webview/tachikoma/c/i;Lcom/kwad/sdk/core/webview/c/c;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/kwad/components/core/webview/jshandler/ax;->arq:Lcom/kwad/components/core/webview/jshandler/ax$a;

    .line 32
    .line 33
    const/4 v1, 0x3

    .line 34
    const/4 v2, 0x2

    .line 35
    const/4 v3, 0x1

    .line 36
    if-eqz p2, :cond_4

    .line 37
    .line 38
    iget v4, v0, Lcom/kwad/components/core/webview/tachikoma/c/i;->aun:I

    .line 39
    .line 40
    if-eq v4, v3, :cond_3

    .line 41
    .line 42
    if-eq v4, v2, :cond_2

    .line 43
    .line 44
    if-eq v4, v1, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-interface {p2, p1}, Lcom/kwad/components/core/webview/jshandler/ax$a;->e(Lcom/kwad/components/core/webview/tachikoma/f/d;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-interface {p2, p1}, Lcom/kwad/components/core/webview/jshandler/ax$a;->c(Lcom/kwad/components/core/webview/tachikoma/f/d;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    invoke-interface {p2, p1}, Lcom/kwad/components/core/webview/jshandler/ax$a;->d(Lcom/kwad/components/core/webview/tachikoma/f/d;)V

    .line 56
    .line 57
    .line 58
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/kwad/components/core/webview/jshandler/ax;->arr:Lcom/kwad/components/core/webview/jshandler/ax$b;

    .line 59
    .line 60
    if-eqz p2, :cond_8

    .line 61
    .line 62
    iget v4, v0, Lcom/kwad/components/core/webview/tachikoma/c/i;->aun:I

    .line 63
    .line 64
    if-eq v4, v3, :cond_7

    .line 65
    .line 66
    if-eq v4, v2, :cond_6

    .line 67
    .line 68
    if-eq v4, v1, :cond_5

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_5
    iget-object v0, v0, Lcom/kwad/components/core/webview/tachikoma/c/i;->interactionInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$AdInteractionInfo;

    .line 72
    .line 73
    iget-object v1, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$AdInteractionInfo;->shakeInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$ShakeInfo;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$AdInteractionInfo;->rotateInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;

    .line 76
    .line 77
    invoke-interface {p2, p1, v1, v0}, Lcom/kwad/components/core/webview/jshandler/ax$b;->a(Lcom/kwad/components/core/webview/tachikoma/f/d;Lcom/kwad/sdk/core/response/model/AdMatrixInfo$ShakeInfo;Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_6
    iget-object v0, v0, Lcom/kwad/components/core/webview/tachikoma/c/i;->interactionInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$AdInteractionInfo;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$AdInteractionInfo;->shakeInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$ShakeInfo;

    .line 84
    .line 85
    invoke-interface {p2, p1, v0}, Lcom/kwad/components/core/webview/jshandler/ax$b;->b(Lcom/kwad/components/core/webview/tachikoma/f/d;Lcom/kwad/sdk/core/response/model/AdMatrixInfo$ShakeInfo;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_7
    iget-object v0, v0, Lcom/kwad/components/core/webview/tachikoma/c/i;->interactionInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$AdInteractionInfo;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$AdInteractionInfo;->rotateInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;

    .line 92
    .line 93
    invoke-interface {p2, p1, v0}, Lcom/kwad/components/core/webview/jshandler/ax$b;->b(Lcom/kwad/components/core/webview/tachikoma/f/d;Lcom/kwad/sdk/core/response/model/AdMatrixInfo$RotateInfo;)V

    .line 94
    .line 95
    .line 96
    :cond_8
    :goto_2
    return-void
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "registerFeedMotionListener"

    .line 2
    .line 3
    return-object v0
.end method

.method public final onDestroy()V
    .locals 0

    return-void
.end method
