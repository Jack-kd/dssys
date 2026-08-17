.class Lcom/octopus/ad/utils/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/utils/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/octopus/ad/utils/a$1;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/utils/a$1;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/utils/a$1$1;->b:Lcom/octopus/ad/utils/a$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/utils/a$1$1;->a:Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/utils/a$1$1;->a:Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/octopus/ad/utils/a$1$1;->b:Lcom/octopus/ad/utils/a$1;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/octopus/ad/utils/a$1;->d:Ljava/io/File;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/octopus/ad/utils/a$1;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v2, v1}, Lcom/octopus/ad/utils/a;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/octopus/ad/utils/a$1$1;->b:Lcom/octopus/ad/utils/a$1;

    .line 14
    .line 15
    iget-object v2, v1, Lcom/octopus/ad/utils/a$1;->e:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/octopus/ad/utils/a$1;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v2, v1, v0}, Lcom/octopus/ad/utils/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/octopus/ad/utils/a$1$1;->b:Lcom/octopus/ad/utils/a$1;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/octopus/ad/utils/a$1;->f:Lcom/octopus/ad/utils/a$a;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {v0, v1}, Lcom/octopus/ad/utils/a;->a(Lcom/octopus/ad/utils/a$a;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/utils/a$1$1;->b:Lcom/octopus/ad/utils/a$1;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/octopus/ad/utils/a$1;->d:Ljava/io/File;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/octopus/ad/utils/a;->b(Ljava/io/File;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/octopus/ad/utils/a$1$1;->a:Ljava/io/File;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/octopus/ad/utils/a$1$1;->b:Lcom/octopus/ad/utils/a$1;

    .line 47
    .line 48
    iget-object v2, v1, Lcom/octopus/ad/utils/a$1;->g:Ljava/io/File;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/octopus/ad/utils/a$1;->b:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v0, v2, v1}, Lcom/octopus/ad/utils/a;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/octopus/ad/utils/a$1$1;->b:Lcom/octopus/ad/utils/a$1;

    .line 57
    .line 58
    iget-object v2, v1, Lcom/octopus/ad/utils/a$1;->e:Landroid/content/Context;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/octopus/ad/utils/a$1;->b:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v2, v1, v3}, Lcom/octopus/ad/utils/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/octopus/ad/utils/a$1$1;->b:Lcom/octopus/ad/utils/a$1;

    .line 70
    .line 71
    iget-object v2, v1, Lcom/octopus/ad/utils/a$1;->e:Landroid/content/Context;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/octopus/ad/utils/a$1;->b:Ljava/lang/String;

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-static {v2, v1, v3}, Lcom/octopus/ad/utils/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/octopus/ad/utils/a$1$1;->b:Lcom/octopus/ad/utils/a$1;

    .line 80
    .line 81
    iget-object v1, v1, Lcom/octopus/ad/utils/a$1;->b:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/octopus/ad/utils/a;->c(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    const-string v2, "DvaSoUpdateDemo"

    .line 88
    .line 89
    if-eqz v1, :cond_1

    .line 90
    .line 91
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v3, "so already loaded in this process, update will take effect next process: "

    .line 97
    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v3, p0, Lcom/octopus/ad/utils/a$1$1;->b:Lcom/octopus/ad/utils/a$1;

    .line 102
    .line 103
    iget-object v3, v3, Lcom/octopus/ad/utils/a$1;->b:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v2, v1}, Lcom/octopus/ad/d/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/octopus/ad/utils/a$1$1;->b:Lcom/octopus/ad/utils/a$1;

    .line 116
    .line 117
    iget-object v1, v1, Lcom/octopus/ad/utils/a$1;->f:Lcom/octopus/ad/utils/a$a;

    .line 118
    .line 119
    invoke-static {v1, v0}, Lcom/octopus/ad/utils/a;->a(Lcom/octopus/ad/utils/a$a;Ljava/io/File;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/octopus/ad/utils/a$1$1;->b:Lcom/octopus/ad/utils/a$1;

    .line 124
    .line 125
    iget-object v1, v1, Lcom/octopus/ad/utils/a$1;->b:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    iget-object v4, p0, Lcom/octopus/ad/utils/a$1$1;->b:Lcom/octopus/ad/utils/a$1;

    .line 132
    .line 133
    iget-object v4, v4, Lcom/octopus/ad/utils/a$1;->e:Landroid/content/Context;

    .line 134
    .line 135
    invoke-static {v1, v3, v4}, Lcom/octopus/ad/utils/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_2

    .line 140
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v3, "load success: "

    .line 147
    .line 148
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-static {v2, v1}, Lcom/octopus/ad/d/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_2
    const-string v1, "updated so installed, but activation failed. fallback to default in current process"

    .line 167
    .line 168
    invoke-static {v2, v1}, Lcom/octopus/ad/d/b/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :goto_1
    iget-object v1, p0, Lcom/octopus/ad/utils/a$1$1;->b:Lcom/octopus/ad/utils/a$1;

    .line 172
    .line 173
    iget-object v1, v1, Lcom/octopus/ad/utils/a$1;->f:Lcom/octopus/ad/utils/a$a;

    .line 174
    .line 175
    invoke-static {v1, v0}, Lcom/octopus/ad/utils/a;->a(Lcom/octopus/ad/utils/a$a;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/octopus/ad/utils/a$1$1;->b:Lcom/octopus/ad/utils/a$1;

    .line 181
    .line 182
    iget-object v1, v1, Lcom/octopus/ad/utils/a$1;->f:Lcom/octopus/ad/utils/a$a;

    .line 183
    .line 184
    invoke-static {v1, v0}, Lcom/octopus/ad/utils/a;->a(Lcom/octopus/ad/utils/a$a;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 185
    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :catchall_1
    move-exception v0

    .line 190
    iget-object v1, p0, Lcom/octopus/ad/utils/a$1$1;->b:Lcom/octopus/ad/utils/a$1;

    .line 191
    .line 192
    iget-object v1, v1, Lcom/octopus/ad/utils/a$1;->d:Ljava/io/File;

    .line 193
    .line 194
    invoke-static {v1}, Lcom/octopus/ad/utils/a;->b(Ljava/io/File;)V

    .line 195
    .line 196
    .line 197
    throw v0
.end method
