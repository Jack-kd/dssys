.class Lcom/beizi/fusion/q4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/ni;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/q4;->c1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/q4;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/q4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/q4$a;->a:Lcom/beizi/fusion/q4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/beizi/fusion/pi;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/q4$a;->a:Lcom/beizi/fusion/q4;

    .line 2
    .line 3
    sget-object v1, Lcom/beizi/fusion/c2;->b:Lcom/beizi/fusion/c2;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/beizi/fusion/q4;->a(Lcom/beizi/fusion/q4;Lcom/beizi/fusion/c2;)Lcom/beizi/fusion/c2;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/q4$a;->a:Lcom/beizi/fusion/q4;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/beizi/fusion/q4;->c(Lcom/beizi/fusion/q4;)Lcom/beizi/fusion/mp;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/beizi/fusion/k3;->s()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/beizi/fusion/q4;->a(Lcom/beizi/fusion/q4;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/beizi/fusion/q4$a;->a:Lcom/beizi/fusion/q4;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/beizi/fusion/q4;->c(Lcom/beizi/fusion/q4;)Lcom/beizi/fusion/mp;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/beizi/fusion/k3;->q()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/q4$a;->a:Lcom/beizi/fusion/q4;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/beizi/fusion/q4;->c(Lcom/beizi/fusion/q4;)Lcom/beizi/fusion/mp;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/beizi/fusion/k3;->q()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/q4;->a(Lcom/beizi/fusion/q4;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/q4$a;->a:Lcom/beizi/fusion/q4;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/beizi/fusion/q4;->d(Lcom/beizi/fusion/q4;)V

    .line 62
    .line 63
    .line 64
    if-nez p1, :cond_1

    .line 65
    .line 66
    iget-object p1, p0, Lcom/beizi/fusion/q4$a;->a:Lcom/beizi/fusion/q4;

    .line 67
    .line 68
    const/16 v0, -0x3df

    .line 69
    .line 70
    invoke-static {p1, v0}, Lcom/beizi/fusion/q4;->a(Lcom/beizi/fusion/q4;I)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/q4$a;->a:Lcom/beizi/fusion/q4;

    .line 75
    .line 76
    invoke-static {v0, p1}, Lcom/beizi/fusion/q4;->a(Lcom/beizi/fusion/q4;Lcom/beizi/fusion/pi;)Lcom/beizi/fusion/pi;

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/beizi/fusion/q4$a;->a:Lcom/beizi/fusion/q4;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/beizi/fusion/q3;->Z0()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public onAdFailed(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/q4$a;->a:Lcom/beizi/fusion/q4;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1, p1}, Lcom/beizi/fusion/q4;->a(Lcom/beizi/fusion/q4;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
