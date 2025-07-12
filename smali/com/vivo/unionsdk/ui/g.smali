.class public Lcom/vivo/unionsdk/ui/g;
.super Landroid/app/Dialog;
.source "UnionDialog.java"


# instance fields
.field private 士:Landroid/widget/TextView;

.field private 始:Landroid/widget/TextView;

.field private 式:Landroid/view/ViewGroup;

.field private 示:Landroid/widget/TextView;

.field private 藛:Landroid/widget/TextView;

.field private 藞:Landroid/widget/RelativeLayout;

.field private 藟:Landroid/widget/FrameLayout;

.field private 藠:Landroid/widget/RelativeLayout;

.field private 藡:I

.field private 藥:I

.field private 藦:I

.field private 驶:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    iput v2, p0, Lcom/vivo/unionsdk/ui/g;->藡:I

    .line 37
    iput v2, p0, Lcom/vivo/unionsdk/ui/g;->藥:I

    .line 38
    iput v2, p0, Lcom/vivo/unionsdk/ui/g;->藦:I

    .line 42
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UnionDialog need a Activity\'s context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/unionsdk/ui/g;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 47
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 48
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {p0, v2}, Lcom/vivo/unionsdk/ui/g;->setCanceledOnTouchOutside(Z)V

    .line 51
    const-string v1, "vivo_common_dialog"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 53
    const-string v2, "vivo_common_dialog_width"

    invoke-static {v2}, Lcom/vivo/unionsdk/s;->始(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 56
    const-string v0, "vivo_common_dlg_title"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/unionsdk/ui/g;->驶:Landroid/widget/TextView;

    .line 57
    const-string v0, "vivo_common_dlg_title_layout"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/vivo/unionsdk/ui/g;->藞:Landroid/widget/RelativeLayout;

    .line 58
    const-string v0, "vivo_common_dlg_content_text"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/unionsdk/ui/g;->始:Landroid/widget/TextView;

    .line 59
    const-string v0, "vivo_common_dlg_btn_positive"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/unionsdk/ui/g;->示:Landroid/widget/TextView;

    .line 60
    const-string v0, "vivo_common_dlg_btn_layout"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/vivo/unionsdk/ui/g;->藠:Landroid/widget/RelativeLayout;

    .line 61
    const-string v0, "vivo_common_dlg_btn_neutral"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/unionsdk/ui/g;->士:Landroid/widget/TextView;

    .line 62
    const-string v0, "vivo_common_dlg_btn_negative"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/unionsdk/ui/g;->藛:Landroid/widget/TextView;

    .line 64
    const-string v0, "vivo_common_dlg_content"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/vivo/unionsdk/ui/g;->式:Landroid/view/ViewGroup;

    .line 65
    const-string v0, "vivo_common_dlg_message_layer"

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/vivo/unionsdk/ui/g;->藟:Landroid/widget/FrameLayout;

    .line 66
    return-void
.end method

.method private 始()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 119
    const/4 v0, 0x0

    .line 120
    iget v1, p0, Lcom/vivo/unionsdk/ui/g;->藡:I

    if-ne v1, v2, :cond_1

    .line 121
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/g;->示:Landroid/widget/TextView;

    move-object v1, v0

    .line 127
    :goto_0
    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 129
    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/ui/g;->驶(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 130
    const-string v2, "vivo_common_dialog_one_btn_width"

    invoke-static {v2}, Lcom/vivo/unionsdk/s;->始(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 131
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 132
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 134
    :cond_0
    return-void

    .line 122
    :cond_1
    iget v1, p0, Lcom/vivo/unionsdk/ui/g;->藥:I

    if-ne v1, v2, :cond_2

    .line 123
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/g;->士:Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_0

    .line 124
    :cond_2
    iget v1, p0, Lcom/vivo/unionsdk/ui/g;->藦:I

    if-ne v1, v2, :cond_3

    .line 125
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/g;->藛:Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method private 式()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 137
    .line 139
    iget v1, p0, Lcom/vivo/unionsdk/ui/g;->藡:I

    if-ne v1, v3, :cond_6

    .line 140
    if-nez v0, :cond_2

    .line 141
    iget-object v1, p0, Lcom/vivo/unionsdk/ui/g;->示:Landroid/widget/TextView;

    .line 146
    :goto_0
    iget v2, p0, Lcom/vivo/unionsdk/ui/g;->藥:I

    if-ne v2, v3, :cond_0

    .line 147
    if-nez v1, :cond_3

    .line 148
    iget-object v1, p0, Lcom/vivo/unionsdk/ui/g;->士:Landroid/widget/TextView;

    .line 153
    :cond_0
    :goto_1
    iget v2, p0, Lcom/vivo/unionsdk/ui/g;->藦:I

    if-ne v2, v3, :cond_5

    .line 154
    if-nez v1, :cond_4

    .line 155
    iget-object v1, p0, Lcom/vivo/unionsdk/ui/g;->藛:Landroid/widget/TextView;

    move-object v2, v0

    move-object v3, v1

    .line 160
    :goto_2
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 161
    const-string v0, "vivo_common_dialog_two_btn_width"

    invoke-static {v0}, Lcom/vivo/unionsdk/s;->始(Ljava/lang/String;)I

    move-result v4

    .line 162
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 163
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 164
    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/ui/g;->驶(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 165
    invoke-direct {p0, v1}, Lcom/vivo/unionsdk/ui/g;->驶(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 166
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 167
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 168
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 169
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 170
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 171
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 173
    :cond_1
    return-void

    .line 142
    :cond_2
    if-nez v0, :cond_6

    .line 143
    iget-object v1, p0, Lcom/vivo/unionsdk/ui/g;->示:Landroid/widget/TextView;

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0

    .line 149
    :cond_3
    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/g;->士:Landroid/widget/TextView;

    goto :goto_1

    .line 156
    :cond_4
    if-nez v0, :cond_5

    .line 157
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/g;->藛:Landroid/widget/TextView;

    move-object v2, v0

    move-object v3, v1

    goto :goto_2

    :cond_5
    move-object v2, v0

    move-object v3, v1

    goto :goto_2

    :cond_6
    move-object v1, v0

    goto :goto_0
.end method

.method private 示()V
    .locals 7

    .prologue
    .line 176
    const-string v0, "vivo_common_dialog_three_btn_width"

    invoke-static {v0}, Lcom/vivo/unionsdk/s;->始(Ljava/lang/String;)I

    move-result v3

    .line 177
    iget-object v4, p0, Lcom/vivo/unionsdk/ui/g;->示:Landroid/widget/TextView;

    .line 178
    iget-object v5, p0, Lcom/vivo/unionsdk/ui/g;->士:Landroid/widget/TextView;

    .line 179
    iget-object v6, p0, Lcom/vivo/unionsdk/ui/g;->藛:Landroid/widget/TextView;

    .line 180
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 181
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 182
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 183
    invoke-direct {p0, v0}, Lcom/vivo/unionsdk/ui/g;->驶(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 184
    invoke-direct {p0, v1}, Lcom/vivo/unionsdk/ui/g;->驶(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 185
    invoke-direct {p0, v2}, Lcom/vivo/unionsdk/ui/g;->驶(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 186
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 187
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 188
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 189
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 190
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 191
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 192
    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 193
    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    .line 194
    invoke-virtual {v6}, Landroid/view/View;->requestLayout()V

    .line 195
    return-void
.end method

.method private 驶()V
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lcom/vivo/unionsdk/ui/g;->藡:I

    iget v1, p0, Lcom/vivo/unionsdk/ui/g;->藥:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/vivo/unionsdk/ui/g;->藦:I

    add-int/2addr v0, v1

    .line 109
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/vivo/unionsdk/ui/g;->始()V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 112
    invoke-direct {p0}, Lcom/vivo/unionsdk/ui/g;->式()V

    goto :goto_0

    .line 113
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/vivo/unionsdk/ui/g;->示()V

    goto :goto_0
.end method

.method private 驶(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    if-nez p1, :cond_0

    .line 205
    :goto_0
    return-void

    .line 202
    :cond_0
    const/16 v0, 0xe

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 203
    const/16 v0, 0x9

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 204
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method


# virtual methods
.method public 始(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/g;->始:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method public 始(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/g;->藠:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/g;->藛:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/g;->藛:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/g;->藛:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/unionsdk/ui/g;->藦:I

    .line 96
    invoke-direct {p0}, Lcom/vivo/unionsdk/ui/g;->驶()V

    .line 97
    return-void
.end method

.method public 式(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/g;->式:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/g;->藟:Landroid/widget/FrameLayout;

    invoke-static {p1, v0}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/vivo/unionsdk/ui/g;->藟:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 104
    return-object v0
.end method

.method public 驶(I)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/g;->驶:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    return-void
.end method

.method public 驶(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/g;->藞:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/g;->驶:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public 驶(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/g;->藠:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/g;->示:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/g;->示:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/g;->示:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/unionsdk/ui/g;->藡:I

    .line 87
    invoke-direct {p0}, Lcom/vivo/unionsdk/ui/g;->驶()V

    .line 88
    return-void
.end method
