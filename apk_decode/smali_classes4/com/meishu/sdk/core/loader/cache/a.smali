.class public Lcom/meishu/sdk/core/loader/cache/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/meishu/sdk/core/loader/cache/a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

.field public c:I

.field public d:Ljava/lang/Object;

.field public e:Z

.field public f:J

.field public g:J

.field public h:Lcom/meishu/sdk/core/domain/MeishuAdInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/loader/cache/a;->e:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-wide/32 v3, 0x1a8ce0

    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-wide v5, p0, Lcom/meishu/sdk/core/loader/cache/a;->g:J

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getExpire_timestamp()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    int-to-long v5, v0

    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    const/4 v8, -0x1

    .line 35
    sparse-switch v7, :sswitch_data_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :sswitch_0
    const-string v7, "BAIDU"

    .line 40
    .line 41
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v8, 0x5

    .line 49
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v7, "SGM"

    .line 51
    .line 52
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v8, 0x4

    .line 60
    goto :goto_0

    .line 61
    :sswitch_2
    const-string v7, "CSJ"

    .line 62
    .line 63
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const/4 v8, 0x3

    .line 71
    goto :goto_0

    .line 72
    :sswitch_3
    const-string v7, "KS"

    .line 73
    .line 74
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_4

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    const/4 v8, 0x2

    .line 82
    goto :goto_0

    .line 83
    :sswitch_4
    const-string v7, "JD"

    .line 84
    .line 85
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_5

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    move v8, v1

    .line 93
    goto :goto_0

    .line 94
    :sswitch_5
    const-string v7, "HW"

    .line 95
    .line 96
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_6

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_6
    move v8, v2

    .line 104
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :pswitch_0
    const-wide/32 v3, 0x360420

    .line 109
    .line 110
    .line 111
    :goto_1
    :pswitch_1
    const-wide/16 v7, 0x0

    .line 112
    .line 113
    cmp-long v0, v5, v7

    .line 114
    .line 115
    if-gtz v0, :cond_7

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_7
    const-wide/16 v3, 0x3e8

    .line 119
    .line 120
    mul-long/2addr v3, v5

    .line 121
    :goto_2
    iget-boolean v0, p0, Lcom/meishu/sdk/core/loader/cache/a;->e:Z

    .line 122
    .line 123
    if-eqz v0, :cond_8

    .line 124
    .line 125
    iget-wide v5, p0, Lcom/meishu/sdk/core/loader/cache/a;->f:J

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_8
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getLoadedTime()J

    .line 131
    .line 132
    .line 133
    move-result-wide v5

    .line 134
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 135
    .line 136
    .line 137
    move-result-wide v7

    .line 138
    sub-long/2addr v7, v5

    .line 139
    cmp-long v0, v7, v3

    .line 140
    .line 141
    if-ltz v0, :cond_9

    .line 142
    .line 143
    return v2

    .line 144
    :cond_9
    return v1

    .line 145
    :sswitch_data_0
    .sparse-switch
        0x90f -> :sswitch_5
        0x93a -> :sswitch_4
        0x968 -> :sswitch_3
        0x105da -> :sswitch_2
        0x14079 -> :sswitch_1
        0x3c0b5fb -> :sswitch_0
    .end sparse-switch

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/meishu/sdk/core/loader/cache/a;

    .line 2
    .line 3
    iget p1, p1, Lcom/meishu/sdk/core/loader/cache/a;->c:I

    .line 4
    .line 5
    iget v0, p0, Lcom/meishu/sdk/core/loader/cache/a;->c:I

    .line 6
    .line 7
    sub-int/2addr p1, v0

    .line 8
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "CacheEntity{key ="

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/cache/a;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ",ad ="

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/cache/a;->d:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ",sdkAdInfo="

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/cache/a;->b:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", cacheScore="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/meishu/sdk/core/loader/cache/a;->c:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x7d

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
