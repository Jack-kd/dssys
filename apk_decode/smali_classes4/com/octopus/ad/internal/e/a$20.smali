.class Lcom/octopus/ad/internal/e/a$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/a;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/e/a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a$20;->a:Lcom/octopus/ad/internal/e/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IZLjava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string p3, "isValid"

    .line 15
    .line 16
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$20;->a:Lcom/octopus/ad/internal/e/a;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->U(Lcom/octopus/ad/internal/e/a;)Landroid/util/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$20;->a:Lcom/octopus/ad/internal/e/a;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->U(Lcom/octopus/ad/internal/e/a;)Landroid/util/Pair;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p3, Ljava/lang/String;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$20;->a:Lcom/octopus/ad/internal/e/a;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->U(Lcom/octopus/ad/internal/e/a;)Landroid/util/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p1, p3, v0}, Lcom/octopus/ad/internal/e/a;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    const-string p3, "OctopusAd"

    .line 60
    .line 61
    const-string v0, "An Exception Caught"

    .line 62
    .line 63
    invoke-static {p3, v0, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$20;->a:Lcom/octopus/ad/internal/e/a;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->V(Lcom/octopus/ad/internal/e/a;)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-lez p1, :cond_1

    .line 74
    .line 75
    new-instance p1, Landroid/os/Handler;

    .line 76
    .line 77
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance p3, Lcom/octopus/ad/internal/e/a$20$1;

    .line 81
    .line 82
    invoke-direct {p3, p0}, Lcom/octopus/ad/internal/e/a$20$1;-><init>(Lcom/octopus/ad/internal/e/a$20;)V

    .line 83
    .line 84
    .line 85
    const-wide/16 v0, 0xc8

    .line 86
    .line 87
    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    .line 89
    .line 90
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 91
    .line 92
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$20;->a:Lcom/octopus/ad/internal/e/a;

    .line 93
    .line 94
    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->V(Lcom/octopus/ad/internal/e/a;)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_3

    .line 99
    .line 100
    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$20;->a:Lcom/octopus/ad/internal/e/a;

    .line 101
    .line 102
    invoke-static {p1, p2}, Lcom/octopus/ad/internal/e/a;->g(Lcom/octopus/ad/internal/e/a;Z)V

    .line 103
    .line 104
    .line 105
    :cond_3
    return-void
.end method
