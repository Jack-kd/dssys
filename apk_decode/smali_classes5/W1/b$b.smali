.class public LW1/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/util/component/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW1/b;->m(Ljava/lang/Appendable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Thread;

.field public final synthetic c:Z

.field public final synthetic d:[Ljava/lang/StackTraceElement;

.field public final synthetic e:LW1/b;


# direct methods
.method public constructor <init>(LW1/b;Ljava/lang/Thread;Z[Ljava/lang/StackTraceElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, LW1/b$b;->e:LW1/b;

    .line 2
    .line 3
    iput-object p2, p0, LW1/b$b;->b:Ljava/lang/Thread;

    .line 4
    .line 5
    iput-boolean p3, p0, LW1/b$b;->c:Z

    .line 6
    .line 7
    iput-object p4, p0, LW1/b$b;->d:[Ljava/lang/StackTraceElement;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public m(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, LW1/b$b;->b:Ljava/lang/Thread;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/16 v1, 0x20

    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v2, p0, LW1/b$b;->b:Ljava/lang/Thread;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, LW1/b$b;->b:Ljava/lang/Thread;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-boolean v1, p0, LW1/b$b;->c:Z

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    const-string v1, " IDLE"

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const-string v1, ""

    .line 57
    .line 58
    :goto_0
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/16 v1, 0xa

    .line 63
    .line 64
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 65
    .line 66
    .line 67
    iget-boolean v0, p0, LW1/b$b;->c:Z

    .line 68
    .line 69
    if-nez v0, :cond_1

    .line 70
    .line 71
    iget-object v0, p0, LW1/b$b;->d:[Ljava/lang/StackTraceElement;

    .line 72
    .line 73
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/4 v1, 0x1

    .line 78
    new-array v1, v1, [Ljava/util/Collection;

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    aput-object v0, v1, v2

    .line 82
    .line 83
    invoke-static {p1, p2, v1}, Lorg/eclipse/jetty/util/component/b;->S(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    return-void
.end method
