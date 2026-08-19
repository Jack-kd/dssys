.class final Lcom/kwad/components/core/webview/tachikoma/i$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/webview/jshandler/as$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/webview/tachikoma/i;->c(Lcom/kwad/sdk/components/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic atm:Lcom/kwad/components/core/webview/tachikoma/i;

.field final synthetic att:Lcom/kwad/sdk/components/t;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/webview/tachikoma/i;Lcom/kwad/sdk/components/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/webview/tachikoma/i$29;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/webview/tachikoma/i$29;->att:Lcom/kwad/sdk/components/t;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/webview/jshandler/as$a;)V
    .locals 10

    .line 1
    iget v0, p1, Lcom/kwad/components/core/webview/jshandler/as$a;->status:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/i$29;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/kwad/components/core/webview/tachikoma/i;->o(Lcom/kwad/components/core/webview/tachikoma/i;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object p1, p0, Lcom/kwad/components/core/webview/tachikoma/i$29;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-static {p1, v0, v1}, Lcom/kwad/components/core/webview/tachikoma/i;->d(Lcom/kwad/components/core/webview/tachikoma/i;J)J

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/kwad/components/core/webview/tachikoma/i$29;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/kwad/components/core/webview/tachikoma/i;->p(Lcom/kwad/components/core/webview/tachikoma/i;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    invoke-static {p1, v0, v1}, Lcom/kwad/components/core/webview/tachikoma/i;->f(Lcom/kwad/components/core/webview/tachikoma/i;J)J

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/kwad/components/core/webview/tachikoma/i$29;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/kwad/components/core/webview/tachikoma/i;->p(Lcom/kwad/components/core/webview/tachikoma/i;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    iget-object v2, p0, Lcom/kwad/components/core/webview/tachikoma/i$29;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 39
    .line 40
    invoke-static {v2}, Lcom/kwad/components/core/webview/tachikoma/i;->c(Lcom/kwad/components/core/webview/tachikoma/i;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    sub-long/2addr v0, v2

    .line 45
    invoke-static {p1, v0, v1}, Lcom/kwad/components/core/webview/tachikoma/i;->g(Lcom/kwad/components/core/webview/tachikoma/i;J)J

    .line 46
    .line 47
    .line 48
    const-string p1, "WebCardPageStatusHandler"

    .line 49
    .line 50
    const-string v0, "registerTKContext"

    .line 51
    .line 52
    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/kwad/components/core/webview/tachikoma/i$29;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/kwad/components/core/webview/tachikoma/i;->b(Lcom/kwad/components/core/webview/tachikoma/i;)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/kwad/components/core/webview/tachikoma/i$29;->att:Lcom/kwad/sdk/components/t;

    .line 66
    .line 67
    iget-object p1, p0, Lcom/kwad/components/core/webview/tachikoma/i$29;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/kwad/components/core/webview/tachikoma/i;->q(Lcom/kwad/components/core/webview/tachikoma/i;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v2

    .line 73
    iget-object p1, p0, Lcom/kwad/components/core/webview/tachikoma/i$29;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/kwad/components/core/webview/tachikoma/i;->r(Lcom/kwad/components/core/webview/tachikoma/i;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v4

    .line 79
    iget-object p1, p0, Lcom/kwad/components/core/webview/tachikoma/i$29;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/kwad/components/core/webview/tachikoma/i;->s(Lcom/kwad/components/core/webview/tachikoma/i;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v6

    .line 85
    iget-object p1, p0, Lcom/kwad/components/core/webview/tachikoma/i$29;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/kwad/components/core/webview/tachikoma/i;->p(Lcom/kwad/components/core/webview/tachikoma/i;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v8

    .line 91
    invoke-static/range {v0 .. v9}, Lcom/kwad/components/core/t/k;->a(Ljava/lang/Integer;Lcom/kwad/sdk/components/t;JJJJ)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/kwad/components/core/webview/tachikoma/i$29;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 95
    .line 96
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/i$29;->att:Lcom/kwad/sdk/components/t;

    .line 97
    .line 98
    invoke-static {p1, v0}, Lcom/kwad/components/core/webview/tachikoma/i;->a(Lcom/kwad/components/core/webview/tachikoma/i;Lcom/kwad/sdk/components/t;)V

    .line 99
    .line 100
    .line 101
    invoke-static {}, Lcom/kwad/components/core/webview/tachikoma/e/b;->zE()Lcom/kwad/components/core/webview/tachikoma/e/b;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/i$29;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 106
    .line 107
    invoke-static {v0}, Lcom/kwad/components/core/webview/tachikoma/i;->b(Lcom/kwad/components/core/webview/tachikoma/i;)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/tachikoma/e/b;->co(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    move-object p1, v0

    .line 117
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/i$29;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 118
    .line 119
    invoke-static {v0}, Lcom/kwad/components/core/webview/tachikoma/i;->b(Lcom/kwad/components/core/webview/tachikoma/i;)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/kwad/components/core/t/k;->c(Ljava/lang/Integer;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/i$29;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 131
    .line 132
    sget-object v1, Lcom/kwad/components/core/webview/tachikoma/TKRenderFailReason;->RENDER_ERROR:Lcom/kwad/components/core/webview/tachikoma/TKRenderFailReason;

    .line 133
    .line 134
    invoke-static {v0, v1}, Lcom/kwad/components/core/webview/tachikoma/i;->b(Lcom/kwad/components/core/webview/tachikoma/i;Lcom/kwad/components/core/webview/tachikoma/TKRenderFailReason;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/i$29;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {v0, p1}, Lcom/kwad/components/core/webview/tachikoma/i;->a(Lcom/kwad/components/core/webview/tachikoma/i;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_0
    iget v0, p1, Lcom/kwad/components/core/webview/jshandler/as$a;->status:I

    .line 148
    .line 149
    if-nez v0, :cond_1

    .line 150
    .line 151
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/i$29;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 152
    .line 153
    sget-object v1, Lcom/kwad/components/core/webview/tachikoma/TKRenderFailReason;->RENDER_ERROR:Lcom/kwad/components/core/webview/tachikoma/TKRenderFailReason;

    .line 154
    .line 155
    invoke-static {v0, v1}, Lcom/kwad/components/core/webview/tachikoma/i;->b(Lcom/kwad/components/core/webview/tachikoma/i;Lcom/kwad/components/core/webview/tachikoma/TKRenderFailReason;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/i$29;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 159
    .line 160
    iget-object p1, p1, Lcom/kwad/components/core/webview/jshandler/as$a;->errorMsg:Ljava/lang/String;

    .line 161
    .line 162
    invoke-static {v0, p1}, Lcom/kwad/components/core/webview/tachikoma/i;->a(Lcom/kwad/components/core/webview/tachikoma/i;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_1
    return-void
.end method
