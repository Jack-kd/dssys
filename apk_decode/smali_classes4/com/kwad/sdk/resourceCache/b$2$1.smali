.class final Lcom/kwad/sdk/resourceCache/b$2$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/resourceCache/b$2;->a(Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bnI:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;

.field final synthetic bnJ:Lcom/kwad/sdk/resourceCache/b$2;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/resourceCache/b$2;Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/resourceCache/b$2$1;->bnJ:Lcom/kwad/sdk/resourceCache/b$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/sdk/resourceCache/b$2$1;->bnI:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/resourceCache/b$2$1;->bnI:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->disableZipWarmup:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->warmupZips:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupZips;

    .line 9
    .line 10
    sput-object v0, Lcom/kwad/sdk/resourceCache/b;->warmupZips:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupZips;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupZips;->zips:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/kwad/sdk/resourceCache/b;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x3

    .line 19
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/resourceCache/b;->a(Ljava/util/List;ILcom/kwad/sdk/resourceCache/b$a;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/resourceCache/b$2$1;->bnI:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;

    .line 23
    .line 24
    iget-boolean v1, v0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->disableFontWarmup:Z

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object v0, v0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->warmupZips:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupZips;

    .line 29
    .line 30
    sput-object v0, Lcom/kwad/sdk/resourceCache/b;->warmupZips:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupZips;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupZips;->fontZips:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/kwad/sdk/resourceCache/b;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x4

    .line 39
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/resourceCache/b;->a(Ljava/util/List;ILcom/kwad/sdk/resourceCache/b$a;)I

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/kwad/sdk/resourceCache/b$2$1;->bnI:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;

    .line 43
    .line 44
    iget-boolean v1, v0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->disableImageWarmup:Z

    .line 45
    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    iget-object v0, v0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->warmupImages:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupImages;

    .line 49
    .line 50
    sput-object v0, Lcom/kwad/sdk/resourceCache/b;->warmupImages:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupImages;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupImages;->images:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/kwad/sdk/resourceCache/b;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/4 v1, 0x2

    .line 59
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/resourceCache/b;->a(Ljava/util/List;ILcom/kwad/sdk/resourceCache/b$a;)I

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object v0, p0, Lcom/kwad/sdk/resourceCache/b$2$1;->bnI:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;

    .line 63
    .line 64
    iget-boolean v1, v0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->disableVideoWarmup:Z

    .line 65
    .line 66
    if-nez v1, :cond_3

    .line 67
    .line 68
    iget-object v0, v0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;->warmupVideos:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupVideos;

    .line 69
    .line 70
    sput-object v0, Lcom/kwad/sdk/resourceCache/b;->warmupVideos:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupVideos;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupVideos;->videos:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/kwad/sdk/resourceCache/b;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const/4 v1, 0x1

    .line 79
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/resourceCache/b;->a(Ljava/util/List;ILcom/kwad/sdk/resourceCache/b$a;)I

    .line 80
    .line 81
    .line 82
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v1, "checklist: "

    .line 85
    .line 86
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lcom/kwad/sdk/resourceCache/b;->TU()Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    sget-object v1, Lcom/kwad/sdk/resourceCache/b;->warmupZips:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupZips;

    .line 101
    .line 102
    iget-object v1, v1, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupZips;->zips:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    sget-object v1, Lcom/kwad/sdk/resourceCache/b;->warmupImages:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupImages;

    .line 112
    .line 113
    iget-object v1, v1, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupImages;->images:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    sget-object v1, Lcom/kwad/sdk/resourceCache/b;->warmupVideos:Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupVideos;

    .line 123
    .line 124
    iget-object v1, v1, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$WarmupVideos;->videos:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const-string v1, "WarmUpManager"

    .line 138
    .line 139
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return-void
.end method
