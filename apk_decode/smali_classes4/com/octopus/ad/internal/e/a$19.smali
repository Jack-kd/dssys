.class Lcom/octopus/ad/internal/e/a$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/a;->a(Ljava/lang/String;Lcom/octopus/ad/internal/d/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/octopus/ad/internal/d/u;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/octopus/ad/internal/d/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a$19;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/e/a$19;->b:Lcom/octopus/ad/internal/d/u;

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
    .locals 6

    .line 1
    const-string v0, "An Exception Caught"

    .line 2
    .line 3
    const-string v1, "OctopusAd"

    .line 4
    .line 5
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/octopus/ad/internal/q;->b()Lcom/octopus/ad/internal/d/h;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    iget-object v3, p0, Lcom/octopus/ad/internal/e/a$19;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Lcom/octopus/ad/internal/d/h;->b(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_3

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    :try_start_0
    iget-object v4, p0, Lcom/octopus/ad/internal/e/a$19;->a:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v2, v4}, Lcom/octopus/ad/internal/d/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v4, Ljava/net/URL;

    .line 31
    .line 32
    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/16 v2, 0x400

    .line 40
    .line 41
    new-array v2, v2, [B

    .line 42
    .line 43
    :goto_0
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/4 v5, -0x1

    .line 48
    if-eq v4, v5, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catch_0
    move-exception v2

    .line 59
    invoke-static {v1, v0, v2}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :catchall_0
    move-exception v2

    .line 64
    goto :goto_1

    .line 65
    :catch_1
    :try_start_2
    iget-object v2, p0, Lcom/octopus/ad/internal/e/a$19;->b:Lcom/octopus/ad/internal/d/u;

    .line 66
    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    iget-object v4, p0, Lcom/octopus/ad/internal/e/a$19;->a:Ljava/lang/String;

    .line 70
    .line 71
    const/4 v5, 0x0

    .line 72
    invoke-interface {v2, v5, v4}, Lcom/octopus/ad/internal/d/u;->a(ZLjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    sget-object v2, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    .line 76
    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v5, "preload fail:"

    .line 83
    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v5, p0, Lcom/octopus/ad/internal/e/a$19;->a:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-static {v2, v4}, Lcom/octopus/ad/internal/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .line 98
    .line 99
    if-eqz v3, :cond_3

    .line 100
    .line 101
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :goto_1
    if-eqz v3, :cond_2

    .line 106
    .line 107
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :catch_2
    move-exception v3

    .line 112
    invoke-static {v1, v0, v3}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    :cond_2
    :goto_2
    throw v2

    .line 116
    :cond_3
    :goto_3
    return-void
.end method
