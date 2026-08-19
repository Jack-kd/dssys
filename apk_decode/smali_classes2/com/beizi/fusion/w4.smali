.class public Lcom/beizi/fusion/w4;
.super Lcom/beizi/fusion/wa;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/wa;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/beizi/fusion/w4;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/beizi/fusion/w4;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/beizi/fusion/w4;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/beizi/fusion/w4;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/beizi/fusion/w4;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/beizi/fusion/w4;->g:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/beizi/fusion/g2;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/beizi/fusion/w4;->f:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p6}, Lcom/beizi/fusion/g2;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/beizi/fusion/w4;->h:Ljava/lang/String;

    .line 35
    .line 36
    return-void
.end method
