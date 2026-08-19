.class final Lcom/kwad/sdk/crash/online/monitor/block/f$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/crash/online/monitor/block/f;->i(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bfj:Ljava/lang/String;

.field final synthetic bfk:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/crash/online/monitor/block/f$1;->bfj:Ljava/lang/String;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/kwad/sdk/crash/online/monitor/block/f$1;->bfk:Z

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/crash/online/monitor/block/f$1;->bfj:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/kwad/sdk/crash/online/monitor/block/f$1;->bfk:Z

    .line 12
    .line 13
    const-string v1, "perf-block"

    .line 14
    .line 15
    const-string v2, "perfMonitor.Reporter"

    .line 16
    .line 17
    if-nez v0, :cond_5

    .line 18
    .line 19
    invoke-static {}, Lcom/kwad/sdk/crash/online/monitor/block/f;->Hd()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v3, 0x1

    .line 24
    if-ne v0, v3, :cond_1

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    new-instance v0, Lcom/kwad/sdk/crash/online/monitor/block/report/BlockReportAction;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/kwad/sdk/crash/online/monitor/block/f$1;->bfj:Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {v0, v3}, Lcom/kwad/sdk/crash/online/monitor/block/report/BlockReportAction;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v4, "write to db :"

    .line 37
    .line 38
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/kwad/sdk/crash/online/monitor/block/report/BlockReportAction;->toJson()Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-static {v2, v3}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-class v2, Lcom/kwad/sdk/service/a/f;

    .line 60
    .line 61
    invoke-static {v2}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lcom/kwad/sdk/service/a/f;

    .line 66
    .line 67
    invoke-interface {v2}, Lcom/kwad/sdk/service/a/f;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-nez v2, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-static {v2}, Lcom/kwad/sdk/crash/online/monitor/block/report/a;->cx(Landroid/content/Context;)Lcom/kwad/sdk/crash/online/monitor/block/report/a;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3, v0}, Lcom/kwad/sdk/core/report/d;->b(Lcom/kwad/sdk/core/report/e;)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lcom/kwad/sdk/crash/online/monitor/block/f;->QB()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    invoke-static {v2}, Lcom/kwad/sdk/crash/online/monitor/block/report/a;->cx(Landroid/content/Context;)Lcom/kwad/sdk/crash/online/monitor/block/report/a;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/kwad/sdk/core/report/d;->MY()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v3, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-eqz v5, :cond_3

    .line 109
    .line 110
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, Lcom/kwad/sdk/core/report/e;

    .line 115
    .line 116
    check-cast v5, Lcom/kwad/sdk/crash/online/monitor/block/report/BlockReportAction;

    .line 117
    .line 118
    iget-object v5, v5, Lcom/kwad/sdk/crash/online/monitor/block/report/BlockReportAction;->msg:Ljava/lang/String;

    .line 119
    .line 120
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_3
    new-instance v4, Lcom/kwad/sdk/crash/online/monitor/block/f$1$1;

    .line 125
    .line 126
    invoke-direct {v4, p0, v2, v0}, Lcom/kwad/sdk/crash/online/monitor/block/f$1$1;-><init>(Lcom/kwad/sdk/crash/online/monitor/block/f$1;Landroid/content/Context;Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v1, v3, v4}, Lcom/kwad/sdk/crash/report/h;->a(Ljava/lang/String;Ljava/util/List;Lcom/kwad/sdk/crash/report/request/b$a;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    :goto_1
    return-void

    .line 133
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v3, "report now :"

    .line 136
    .line 137
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v3, p0, Lcom/kwad/sdk/crash/online/monitor/block/f$1;->bfj:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v2, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/kwad/sdk/crash/online/monitor/block/f$1;->bfj:Ljava/lang/String;

    .line 153
    .line 154
    invoke-static {v1, v0}, Lcom/kwad/sdk/crash/report/h;->ak(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-void
.end method
