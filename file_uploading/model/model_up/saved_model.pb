��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
�
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758��
~
Adam/v/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_1/bias
w
'Adam/v/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_1/bias
w
'Adam/m/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*&
shared_nameAdam/v/dense_1/kernel
�
)Adam/v/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/kernel*
_output_shapes
:	�*
dtype0
�
Adam/m/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*&
shared_nameAdam/m/dense_1/kernel
�
)Adam/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/kernel*
_output_shapes
:	�*
dtype0
�
Adam/v/conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/v/conv2d_7/bias
z
(Adam/v/conv2d_7/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_7/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/m/conv2d_7/bias
z
(Adam/m/conv2d_7/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_7/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*'
shared_nameAdam/v/conv2d_7/kernel
�
*Adam/v/conv2d_7/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_7/kernel*'
_output_shapes
:@�*
dtype0
�
Adam/m/conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*'
shared_nameAdam/m/conv2d_7/kernel
�
*Adam/m/conv2d_7/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_7/kernel*'
_output_shapes
:@�*
dtype0
�
Adam/v/conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_6/bias
y
(Adam/v/conv2d_6/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_6/bias*
_output_shapes
:@*
dtype0
�
Adam/m/conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_6/bias
y
(Adam/m/conv2d_6/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_6/bias*
_output_shapes
:@*
dtype0
�
Adam/v/conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/v/conv2d_6/kernel
�
*Adam/v/conv2d_6/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_6/kernel*&
_output_shapes
: @*
dtype0
�
Adam/m/conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/m/conv2d_6/kernel
�
*Adam/m/conv2d_6/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_6/kernel*&
_output_shapes
: @*
dtype0
�
Adam/v/conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/conv2d_5/bias
y
(Adam/v/conv2d_5/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_5/bias*
_output_shapes
: *
dtype0
�
Adam/m/conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/conv2d_5/bias
y
(Adam/m/conv2d_5/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_5/bias*
_output_shapes
: *
dtype0
�
Adam/v/conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/v/conv2d_5/kernel
�
*Adam/v/conv2d_5/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_5/kernel*&
_output_shapes
: *
dtype0
�
Adam/m/conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/m/conv2d_5/kernel
�
*Adam/m/conv2d_5/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_5/kernel*&
_output_shapes
: *
dtype0
�
Adam/v/conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/conv2d_4/bias
y
(Adam/v/conv2d_4/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_4/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/conv2d_4/bias
y
(Adam/m/conv2d_4/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_4/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/v/conv2d_4/kernel
�
*Adam/v/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_4/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/m/conv2d_4/kernel
�
*Adam/m/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_4/kernel*&
_output_shapes
:*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	�*
dtype0
s
conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_7/bias
l
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes	
:�*
dtype0
�
conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�* 
shared_nameconv2d_7/kernel
|
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*'
_output_shapes
:@�*
dtype0
r
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_6/bias
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
:@*
dtype0
�
conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_6/kernel
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
: *
dtype0
�
conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
: *
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:*
dtype0
�
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:*
dtype0
�
serving_default_args_0Placeholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_args_0conv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasdense_1/kerneldense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference_signature_wrapper_7084

NoOpNoOp
�T
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�T
value�TB�T B�T
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

_model
	_learner


signatures
#_self_saveable_object_factories
	Train
Validate*
J
0
1
2
3
4
5
6
7
8
9*
J
0
1
2
3
4
5
6
7
8
9*
* 
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
trace_0
trace_1
trace_2
 trace_3* 
6
!trace_0
"trace_1
#trace_2
$trace_3* 
* 
�
%layer-0
&layer-1
'layer_with_weights-0
'layer-2
(layer_with_weights-1
(layer-3
)layer_with_weights-2
)layer-4
*layer_with_weights-3
*layer-5
+layer-6
,layer-7
-layer_with_weights-4
-layer-8
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses
#4_self_saveable_object_factories*

5optimize*

6serving_default* 
* 

7trace_0* 

8trace_0* 
OI
VARIABLE_VALUEconv2d_4/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_4/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_5/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_5/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_6/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_6/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_7/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_7/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_1/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense_1/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
'
#9_self_saveable_object_factories* 
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses
#@_self_saveable_object_factories* 
�
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

kernel
bias
#G_self_saveable_object_factories
 H_jit_compiled_convolution_op*
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

kernel
bias
#O_self_saveable_object_factories
 P_jit_compiled_convolution_op*
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses

kernel
bias
#W_self_saveable_object_factories
 X_jit_compiled_convolution_op*
�
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses

kernel
bias
#__self_saveable_object_factories
 `_jit_compiled_convolution_op*
�
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses
#g_self_saveable_object_factories* 
�
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses
n_random_generator
#o_self_saveable_object_factories* 
�
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses

kernel
bias
#v_self_saveable_object_factories*
J
0
1
2
3
4
5
6
7
8
9*
J
0
1
2
3
4
5
6
7
8
9*
* 
�
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses*
6
|trace_0
}trace_1
~trace_2
trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
$�_self_saveable_object_factories
�_update_step_xla*
* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
(
$�_self_saveable_object_factories* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
C
%0
&1
'2
(3
)4
*5
+6
,7
-8*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20*
[U
VARIABLE_VALUE	iteration8_learner/optimize/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUElearning_rate;_learner/optimize/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
T
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9*
T
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
ic
VARIABLE_VALUEAdam/m/conv2d_4/kernel9_learner/optimize/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/conv2d_4/kernel9_learner/optimize/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/conv2d_4/bias9_learner/optimize/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/conv2d_4/bias9_learner/optimize/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/conv2d_5/kernel9_learner/optimize/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/conv2d_5/kernel9_learner/optimize/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/conv2d_5/bias9_learner/optimize/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/conv2d_5/bias9_learner/optimize/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/conv2d_6/kernel9_learner/optimize/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/conv2d_6/kernel:_learner/optimize/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/m/conv2d_6/bias:_learner/optimize/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/v/conv2d_6/bias:_learner/optimize/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/conv2d_7/kernel:_learner/optimize/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/conv2d_7/kernel:_learner/optimize/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/m/conv2d_7/bias:_learner/optimize/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/v/conv2d_7/bias:_learner/optimize/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/dense_1/kernel:_learner/optimize/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/dense_1/kernel:_learner/optimize/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/dense_1/bias:_learner/optimize/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/dense_1/bias:_learner/optimize/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasdense_1/kerneldense_1/bias	iterationlearning_rateAdam/m/conv2d_4/kernelAdam/v/conv2d_4/kernelAdam/m/conv2d_4/biasAdam/v/conv2d_4/biasAdam/m/conv2d_5/kernelAdam/v/conv2d_5/kernelAdam/m/conv2d_5/biasAdam/v/conv2d_5/biasAdam/m/conv2d_6/kernelAdam/v/conv2d_6/kernelAdam/m/conv2d_6/biasAdam/v/conv2d_6/biasAdam/m/conv2d_7/kernelAdam/v/conv2d_7/kernelAdam/m/conv2d_7/biasAdam/v/conv2d_7/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biasConst*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *&
f!R
__inference__traced_save_8237
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasdense_1/kerneldense_1/bias	iterationlearning_rateAdam/m/conv2d_4/kernelAdam/v/conv2d_4/kernelAdam/m/conv2d_4/biasAdam/v/conv2d_4/biasAdam/m/conv2d_5/kernelAdam/v/conv2d_5/kernelAdam/m/conv2d_5/biasAdam/v/conv2d_5/biasAdam/m/conv2d_6/kernelAdam/v/conv2d_6/kernelAdam/m/conv2d_6/biasAdam/v/conv2d_6/biasAdam/m/conv2d_7/kernelAdam/v/conv2d_7/kernelAdam/m/conv2d_7/biasAdam/v/conv2d_7/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/bias*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference__traced_restore_8343��
�
�
B__inference_conv2d_5_layer_call_and_return_conditional_losses_7139

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�"
�
__inference_gradient_func_8046
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *'
f"R 
__inference_gradient_func_1258_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�>
�	
C__inference_my_model_1_layer_call_and_return_conditional_losses_765
xI
/model_1_conv2d_4_conv2d_readvariableop_resource:>
0model_1_conv2d_4_biasadd_readvariableop_resource:I
/model_1_conv2d_5_conv2d_readvariableop_resource: >
0model_1_conv2d_5_biasadd_readvariableop_resource: I
/model_1_conv2d_6_conv2d_readvariableop_resource: @>
0model_1_conv2d_6_biasadd_readvariableop_resource:@J
/model_1_conv2d_7_conv2d_readvariableop_resource:@�?
0model_1_conv2d_7_biasadd_readvariableop_resource:	�A
.model_1_dense_1_matmul_readvariableop_resource:	�=
/model_1_dense_1_biasadd_readvariableop_resource:
identity��'model_1/conv2d_4/BiasAdd/ReadVariableOp�&model_1/conv2d_4/Conv2D/ReadVariableOp�'model_1/conv2d_5/BiasAdd/ReadVariableOp�&model_1/conv2d_5/Conv2D/ReadVariableOp�'model_1/conv2d_6/BiasAdd/ReadVariableOp�&model_1/conv2d_6/Conv2D/ReadVariableOp�'model_1/conv2d_7/BiasAdd/ReadVariableOp�&model_1/conv2d_7/Conv2D/ReadVariableOp�&model_1/dense_1/BiasAdd/ReadVariableOp�%model_1/dense_1/MatMul/ReadVariableOp_
model_1/lambda_1/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
model_1/lambda_1/truedivRealDivx#model_1/lambda_1/truediv/y:output:0*
T0*1
_output_shapes
:�����������[
model_1/lambda_1/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
model_1/lambda_1/subSubmodel_1/lambda_1/truediv:z:0model_1/lambda_1/sub/y:output:0*
T0*1
_output_shapes
:������������
&model_1/conv2d_4/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_1/conv2d_4/Conv2DConv2Dmodel_1/lambda_1/sub:z:0.model_1/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
'model_1/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/conv2d_4/BiasAddBiasAdd model_1/conv2d_4/Conv2D:output:0/model_1/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������|
model_1/conv2d_4/ReluRelu!model_1/conv2d_4/BiasAdd:output:0*
T0*1
_output_shapes
:������������
&model_1/conv2d_5/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
model_1/conv2d_5/Conv2DConv2D#model_1/conv2d_4/Relu:activations:0.model_1/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
�
'model_1/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_1/conv2d_5/BiasAddBiasAdd model_1/conv2d_5/Conv2D:output:0/model_1/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� |
model_1/conv2d_5/ReluRelu!model_1/conv2d_5/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
&model_1/conv2d_6/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
model_1/conv2d_6/Conv2DConv2D#model_1/conv2d_5/Relu:activations:0.model_1/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingVALID*
strides
�
'model_1/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_1/conv2d_6/BiasAddBiasAdd model_1/conv2d_6/Conv2D:output:0/model_1/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@|
model_1/conv2d_6/ReluRelu!model_1/conv2d_6/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@�
&model_1/conv2d_7/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_7_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
model_1/conv2d_7/Conv2DConv2D#model_1/conv2d_6/Relu:activations:0.model_1/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������*
paddingVALID*
strides
�
'model_1/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/conv2d_7/BiasAddBiasAdd model_1/conv2d_7/Conv2D:output:0/model_1/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������}
model_1/conv2d_7/ReluRelu!model_1/conv2d_7/BiasAdd:output:0*
T0*2
_output_shapes 
:�������������
9model_1/global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
'model_1/global_average_pooling2d_1/MeanMean#model_1/conv2d_7/Relu:activations:0Bmodel_1/global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
model_1/dropout_1/IdentityIdentity0model_1/global_average_pooling2d_1/Mean:output:0*
T0*(
_output_shapes
:�����������
%model_1/dense_1/MatMul/ReadVariableOpReadVariableOp.model_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model_1/dense_1/MatMulMatMul#model_1/dropout_1/Identity:output:0-model_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
&model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/dense_1/BiasAddBiasAdd model_1/dense_1/MatMul:product:0.model_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
model_1/dense_1/SoftmaxSoftmax model_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:����������
NoOpNoOp(^model_1/conv2d_4/BiasAdd/ReadVariableOp'^model_1/conv2d_4/Conv2D/ReadVariableOp(^model_1/conv2d_5/BiasAdd/ReadVariableOp'^model_1/conv2d_5/Conv2D/ReadVariableOp(^model_1/conv2d_6/BiasAdd/ReadVariableOp'^model_1/conv2d_6/Conv2D/ReadVariableOp(^model_1/conv2d_7/BiasAdd/ReadVariableOp'^model_1/conv2d_7/Conv2D/ReadVariableOp'^model_1/dense_1/BiasAdd/ReadVariableOp&^model_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity!model_1/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2R
'model_1/conv2d_4/BiasAdd/ReadVariableOp'model_1/conv2d_4/BiasAdd/ReadVariableOp2P
&model_1/conv2d_4/Conv2D/ReadVariableOp&model_1/conv2d_4/Conv2D/ReadVariableOp2R
'model_1/conv2d_5/BiasAdd/ReadVariableOp'model_1/conv2d_5/BiasAdd/ReadVariableOp2P
&model_1/conv2d_5/Conv2D/ReadVariableOp&model_1/conv2d_5/Conv2D/ReadVariableOp2R
'model_1/conv2d_6/BiasAdd/ReadVariableOp'model_1/conv2d_6/BiasAdd/ReadVariableOp2P
&model_1/conv2d_6/Conv2D/ReadVariableOp&model_1/conv2d_6/Conv2D/ReadVariableOp2R
'model_1/conv2d_7/BiasAdd/ReadVariableOp'model_1/conv2d_7/BiasAdd/ReadVariableOp2P
&model_1/conv2d_7/Conv2D/ReadVariableOp&model_1/conv2d_7/Conv2D/ReadVariableOp2P
&model_1/dense_1/BiasAdd/ReadVariableOp&model_1/dense_1/BiasAdd/ReadVariableOp2N
%model_1/dense_1/MatMul/ReadVariableOp%model_1/dense_1/MatMul/ReadVariableOp:T P
1
_output_shapes
:�����������

_user_specified_namex
�#
�
__inference_gradient_func_1488
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference_gradient_func_1446_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�
�
'__inference_conv2d_7_layer_call_fn_7738

inputs"
unknown:@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_7_layer_call_and_return_conditional_losses_7173z
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*2
_output_shapes 
:������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�L
�

__inference_Validate_3232
x
yT
:my_model_1_model_1_conv2d_4_conv2d_readvariableop_resource:I
;my_model_1_model_1_conv2d_4_biasadd_readvariableop_resource:T
:my_model_1_model_1_conv2d_5_conv2d_readvariableop_resource: I
;my_model_1_model_1_conv2d_5_biasadd_readvariableop_resource: T
:my_model_1_model_1_conv2d_6_conv2d_readvariableop_resource: @I
;my_model_1_model_1_conv2d_6_biasadd_readvariableop_resource:@U
:my_model_1_model_1_conv2d_7_conv2d_readvariableop_resource:@�J
;my_model_1_model_1_conv2d_7_biasadd_readvariableop_resource:	�L
9my_model_1_model_1_dense_1_matmul_readvariableop_resource:	�H
:my_model_1_model_1_dense_1_biasadd_readvariableop_resource:
identity��2my_model_1/model_1/conv2d_4/BiasAdd/ReadVariableOp�1my_model_1/model_1/conv2d_4/Conv2D/ReadVariableOp�2my_model_1/model_1/conv2d_5/BiasAdd/ReadVariableOp�1my_model_1/model_1/conv2d_5/Conv2D/ReadVariableOp�2my_model_1/model_1/conv2d_6/BiasAdd/ReadVariableOp�1my_model_1/model_1/conv2d_6/Conv2D/ReadVariableOp�2my_model_1/model_1/conv2d_7/BiasAdd/ReadVariableOp�1my_model_1/model_1/conv2d_7/Conv2D/ReadVariableOp�1my_model_1/model_1/dense_1/BiasAdd/ReadVariableOp�0my_model_1/model_1/dense_1/MatMul/ReadVariableOpj
%my_model_1/model_1/lambda_1/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
#my_model_1/model_1/lambda_1/truedivRealDivx.my_model_1/model_1/lambda_1/truediv/y:output:0*
T0*(
_output_shapes
:
��f
!my_model_1/model_1/lambda_1/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
my_model_1/model_1/lambda_1/subSub'my_model_1/model_1/lambda_1/truediv:z:0*my_model_1/model_1/lambda_1/sub/y:output:0*
T0*(
_output_shapes
:
���
1my_model_1/model_1/conv2d_4/Conv2D/ReadVariableOpReadVariableOp:my_model_1_model_1_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
"my_model_1/model_1/conv2d_4/Conv2DConv2D#my_model_1/model_1/lambda_1/sub:z:09my_model_1/model_1/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:
��*
paddingVALID*
strides
�
2my_model_1/model_1/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp;my_model_1_model_1_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
#my_model_1/model_1/conv2d_4/BiasAddBiasAdd+my_model_1/model_1/conv2d_4/Conv2D:output:0:my_model_1/model_1/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:
���
 my_model_1/model_1/conv2d_4/ReluRelu,my_model_1/model_1/conv2d_4/BiasAdd:output:0*
T0*(
_output_shapes
:
���
1my_model_1/model_1/conv2d_5/Conv2D/ReadVariableOpReadVariableOp:my_model_1_model_1_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
"my_model_1/model_1/conv2d_5/Conv2DConv2D.my_model_1/model_1/conv2d_4/Relu:activations:09my_model_1/model_1/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:
�� *
paddingVALID*
strides
�
2my_model_1/model_1/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp;my_model_1_model_1_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
#my_model_1/model_1/conv2d_5/BiasAddBiasAdd+my_model_1/model_1/conv2d_5/Conv2D:output:0:my_model_1/model_1/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:
�� �
 my_model_1/model_1/conv2d_5/ReluRelu,my_model_1/model_1/conv2d_5/BiasAdd:output:0*
T0*(
_output_shapes
:
�� �
1my_model_1/model_1/conv2d_6/Conv2D/ReadVariableOpReadVariableOp:my_model_1_model_1_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
"my_model_1/model_1/conv2d_6/Conv2DConv2D.my_model_1/model_1/conv2d_5/Relu:activations:09my_model_1/model_1/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:
��@*
paddingVALID*
strides
�
2my_model_1/model_1/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp;my_model_1_model_1_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
#my_model_1/model_1/conv2d_6/BiasAddBiasAdd+my_model_1/model_1/conv2d_6/Conv2D:output:0:my_model_1/model_1/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:
��@�
 my_model_1/model_1/conv2d_6/ReluRelu,my_model_1/model_1/conv2d_6/BiasAdd:output:0*
T0*(
_output_shapes
:
��@�
1my_model_1/model_1/conv2d_7/Conv2D/ReadVariableOpReadVariableOp:my_model_1_model_1_conv2d_7_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
"my_model_1/model_1/conv2d_7/Conv2DConv2D.my_model_1/model_1/conv2d_6/Relu:activations:09my_model_1/model_1/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*)
_output_shapes
:
���*
paddingVALID*
strides
�
2my_model_1/model_1/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp;my_model_1_model_1_conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#my_model_1/model_1/conv2d_7/BiasAddBiasAdd+my_model_1/model_1/conv2d_7/Conv2D:output:0:my_model_1/model_1/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:
����
 my_model_1/model_1/conv2d_7/ReluRelu,my_model_1/model_1/conv2d_7/BiasAdd:output:0*
T0*)
_output_shapes
:
����
Dmy_model_1/model_1/global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
2my_model_1/model_1/global_average_pooling2d_1/MeanMean.my_model_1/model_1/conv2d_7/Relu:activations:0Mmy_model_1/model_1/global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*
_output_shapes
:	
��
%my_model_1/model_1/dropout_1/IdentityIdentity;my_model_1/model_1/global_average_pooling2d_1/Mean:output:0*
T0*
_output_shapes
:	
��
0my_model_1/model_1/dense_1/MatMul/ReadVariableOpReadVariableOp9my_model_1_model_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
!my_model_1/model_1/dense_1/MatMulMatMul.my_model_1/model_1/dropout_1/Identity:output:08my_model_1/model_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
�
1my_model_1/model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp:my_model_1_model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
"my_model_1/model_1/dense_1/BiasAddBiasAdd+my_model_1/model_1/dense_1/MatMul:product:09my_model_1/model_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:
�
"my_model_1/model_1/dense_1/SoftmaxSoftmax+my_model_1/model_1/dense_1/BiasAdd:output:0*
T0*
_output_shapes

:
R
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
value	B :S
ArgMaxArgMaxyArgMax/dimension:output:0*
T0*
_output_shapes
:
U
in_top_k/InTopKV2/kConst*
_output_shapes
: *
dtype0	*
value	B	 R�
in_top_k/InTopKV2InTopKV2,my_model_1/model_1/dense_1/Softmax:softmax:0ArgMax:output:0in_top_k/InTopKV2/k:output:0*
T0	*
_output_shapes
:
_
CastCastin_top_k/InTopKV2:precision:0*

DstT0*

SrcT0
*
_output_shapes
:
O
ConstConst*
_output_shapes
:*
dtype0*
valueB: G
MeanMeanCast:y:0Const:output:0*
T0*
_output_shapes
: �
NoOpNoOp3^my_model_1/model_1/conv2d_4/BiasAdd/ReadVariableOp2^my_model_1/model_1/conv2d_4/Conv2D/ReadVariableOp3^my_model_1/model_1/conv2d_5/BiasAdd/ReadVariableOp2^my_model_1/model_1/conv2d_5/Conv2D/ReadVariableOp3^my_model_1/model_1/conv2d_6/BiasAdd/ReadVariableOp2^my_model_1/model_1/conv2d_6/Conv2D/ReadVariableOp3^my_model_1/model_1/conv2d_7/BiasAdd/ReadVariableOp2^my_model_1/model_1/conv2d_7/Conv2D/ReadVariableOp2^my_model_1/model_1/dense_1/BiasAdd/ReadVariableOp1^my_model_1/model_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 K
IdentityIdentityMean:output:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:
��:
: : : : : : : : : : 2h
2my_model_1/model_1/conv2d_4/BiasAdd/ReadVariableOp2my_model_1/model_1/conv2d_4/BiasAdd/ReadVariableOp2f
1my_model_1/model_1/conv2d_4/Conv2D/ReadVariableOp1my_model_1/model_1/conv2d_4/Conv2D/ReadVariableOp2h
2my_model_1/model_1/conv2d_5/BiasAdd/ReadVariableOp2my_model_1/model_1/conv2d_5/BiasAdd/ReadVariableOp2f
1my_model_1/model_1/conv2d_5/Conv2D/ReadVariableOp1my_model_1/model_1/conv2d_5/Conv2D/ReadVariableOp2h
2my_model_1/model_1/conv2d_6/BiasAdd/ReadVariableOp2my_model_1/model_1/conv2d_6/BiasAdd/ReadVariableOp2f
1my_model_1/model_1/conv2d_6/Conv2D/ReadVariableOp1my_model_1/model_1/conv2d_6/Conv2D/ReadVariableOp2h
2my_model_1/model_1/conv2d_7/BiasAdd/ReadVariableOp2my_model_1/model_1/conv2d_7/BiasAdd/ReadVariableOp2f
1my_model_1/model_1/conv2d_7/Conv2D/ReadVariableOp1my_model_1/model_1/conv2d_7/Conv2D/ReadVariableOp2f
1my_model_1/model_1/dense_1/BiasAdd/ReadVariableOp1my_model_1/model_1/dense_1/BiasAdd/ReadVariableOp2d
0my_model_1/model_1/dense_1/MatMul/ReadVariableOp0my_model_1/model_1/dense_1/MatMul/ReadVariableOp:K G
(
_output_shapes
:
��

_user_specified_namex:A=

_output_shapes

:


_user_specified_namey
�#
�
__inference_gradient_func_1844
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference_gradient_func_1802_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�
�
D__inference_my_model_1_layer_call_and_return_conditional_losses_3001
x'
model_1_15228:
model_1_15230:'
model_1_15232: 
model_1_15234: '
model_1_15236: @
model_1_15238:@(
model_1_15240:@�
model_1_15242:	� 
model_1_15244:	�
model_1_15246:
identity��model_1/StatefulPartitionedCall�
model_1/StatefulPartitionedCallStatefulPartitionedCallxmodel_1_15228model_1_15230model_1_15232model_1_15234model_1_15236model_1_15238model_1_15240model_1_15242model_1_15244model_1_15246*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_2986h
NoOpNoOp ^model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 w
IdentityIdentity(model_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2B
model_1/StatefulPartitionedCallmodel_1/StatefulPartitionedCall:T P
1
_output_shapes
:�����������

_user_specified_namex
�#
�
__inference_gradient_func_1760
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference_gradient_func_1718_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�

�
)__inference_my_model_1_layer_call_fn_3031
input_1!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_my_model_1_layer_call_and_return_conditional_losses_3001`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
D__inference_my_model_1_layer_call_and_return_conditional_losses_3083
x'
model_1_15278:
model_1_15280:'
model_1_15282: 
model_1_15284: '
model_1_15286: @
model_1_15288:@(
model_1_15290:@�
model_1_15292:	� 
model_1_15294:	�
model_1_15296:
identity��model_1/StatefulPartitionedCall�
model_1/StatefulPartitionedCallStatefulPartitionedCallxmodel_1_15278model_1_15280model_1_15282model_1_15284model_1_15286model_1_15288model_1_15290model_1_15292model_1_15294model_1_15296*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_3068h
NoOpNoOp ^model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 w
IdentityIdentity(model_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2B
model_1/StatefulPartitionedCallmodel_1/StatefulPartitionedCall:T P
1
_output_shapes
:�����������

_user_specified_namex
�#
�
__inference_gradient_func_1216
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference_gradient_func_1174_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�

�
)__inference_my_model_1_layer_call_fn_3016
x!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_my_model_1_layer_call_and_return_conditional_losses_3001`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
1
_output_shapes
:�����������

_user_specified_namex
�
^
B__inference_lambda_1_layer_call_and_return_conditional_losses_7222

inputs
identityN
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �Bj
truedivRealDivinputstruediv/y:output:0*
T0*1
_output_shapes
:�����������J
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
subSubtruediv:z:0sub/y:output:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentitysub:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�#
�
__inference_gradient_func_2116
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference_gradient_func_2074_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�#
�
__inference_gradient_func_1446
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference_gradient_func_1404_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�
�
&__inference_dense_1_layer_call_fn_7796

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_7205o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�#
�
__inference_gradient_func_1174
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference_gradient_func_1132_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�#
�
__inference_gradient_func_1132
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference_internal_grad_fn_1090_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�
`
B__inference_dropout_1_layer_call_and_return_conditional_losses_330

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�$
�
A__inference_model_1_layer_call_and_return_conditional_losses_7349

inputs'
conv2d_4_7321:
conv2d_4_7323:'
conv2d_5_7326: 
conv2d_5_7328: '
conv2d_6_7331: @
conv2d_6_7333:@(
conv2d_7_7336:@�
conv2d_7_7338:	�
dense_1_7343:	�
dense_1_7345:
identity�� conv2d_4/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�
lambda_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_7222�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0conv2d_4_7321conv2d_4_7323*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_7122�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0conv2d_5_7326conv2d_5_7328*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_5_layer_call_and_return_conditional_losses_7139�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_6_7331conv2d_6_7333*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_7156�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0conv2d_7_7336conv2d_7_7338*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_7_layer_call_and_return_conditional_losses_7173�
*global_average_pooling2d_1/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_7091�
dropout_1/PartitionedCallPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_7249�
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_1_7343dense_1_7345*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_7205w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�"
�
__inference_gradient_func_7917
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *'
f"R 
__inference_gradient_func_2200_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�"
�
__inference_gradient_func_8003
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *'
f"R 
__inference_gradient_func_1530_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�
�
D__inference_my_model_1_layer_call_and_return_conditional_losses_3046
input_1'
model_1_15175:
model_1_15177:'
model_1_15179: 
model_1_15181: '
model_1_15183: @
model_1_15185:@(
model_1_15187:@�
model_1_15189:	� 
model_1_15191:	�
model_1_15193:
identity��model_1/StatefulPartitionedCall�
model_1/StatefulPartitionedCallStatefulPartitionedCallinput_1model_1_15175model_1_15177model_1_15179model_1_15181model_1_15183model_1_15185model_1_15187model_1_15189model_1_15191model_1_15193*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_2986h
NoOpNoOp ^model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 w
IdentityIdentity(model_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2B
model_1/StatefulPartitionedCallmodel_1/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�)
�
 __inference_internal_grad_fn_902
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19U
IdentityIdentityresult_grads_0*
T0*&
_output_shapes
:K

Identity_1Identityresult_grads_1*
T0*
_output_shapes
:W

Identity_2Identityresult_grads_2*
T0*&
_output_shapes
: K

Identity_3Identityresult_grads_3*
T0*
_output_shapes
: W

Identity_4Identityresult_grads_4*
T0*&
_output_shapes
: @K

Identity_5Identityresult_grads_5*
T0*
_output_shapes
:@X

Identity_6Identityresult_grads_6*
T0*'
_output_shapes
:@�L

Identity_7Identityresult_grads_7*
T0*
_output_shapes	
:�P

Identity_8Identityresult_grads_8*
T0*
_output_shapes
:	�K

Identity_9Identityresult_grads_9*
T0*
_output_shapes
:�
	IdentityN	IdentityNresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9*
T
2*+
_gradient_op_typeCustomGradient-51954*�
_output_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�:\
Identity_10IdentityIdentityN:output:0*
T0*&
_output_shapes
:P
Identity_11IdentityIdentityN:output:1*
T0*
_output_shapes
:\
Identity_12IdentityIdentityN:output:2*
T0*&
_output_shapes
: P
Identity_13IdentityIdentityN:output:3*
T0*
_output_shapes
: \
Identity_14IdentityIdentityN:output:4*
T0*&
_output_shapes
: @P
Identity_15IdentityIdentityN:output:5*
T0*
_output_shapes
:@]
Identity_16IdentityIdentityN:output:6*
T0*'
_output_shapes
:@�Q
Identity_17IdentityIdentityN:output:7*
T0*
_output_shapes	
:�U
Identity_18IdentityIdentityN:output:8*
T0*
_output_shapes
:	�P
Identity_19IdentityIdentityN:output:9*
T0*
_output_shapes
:"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�$
�
A__inference_model_1_layer_call_and_return_conditional_losses_7257
input_2'
conv2d_4_7224:
conv2d_4_7226:'
conv2d_5_7229: 
conv2d_5_7231: '
conv2d_6_7234: @
conv2d_6_7236:@(
conv2d_7_7239:@�
conv2d_7_7241:	�
dense_1_7251:	�
dense_1_7253:
identity�� conv2d_4/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�
lambda_1/PartitionedCallPartitionedCallinput_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_7222�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0conv2d_4_7224conv2d_4_7226*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_7122�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0conv2d_5_7229conv2d_5_7231*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_5_layer_call_and_return_conditional_losses_7139�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_6_7234conv2d_6_7236*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_7156�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0conv2d_7_7239conv2d_7_7241*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_7_layer_call_and_return_conditional_losses_7173�
*global_average_pooling2d_1/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_7091�
dropout_1/PartitionedCallPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_7249�
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_1_7251dense_1_7253*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_7205w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_2
�
C
'__inference_lambda_1_layer_call_fn_7653

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_7222j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�#
�
__inference_gradient_func_1948
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference_internal_grad_fn_1906_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�
a
(__inference_dropout_1_layer_call_fn_7765

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_7192p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
)__inference_my_model_1_layer_call_fn_3098
x!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_my_model_1_layer_call_and_return_conditional_losses_3083`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
1
_output_shapes
:�����������

_user_specified_namex
�

b
C__inference_dropout_1_layer_call_and_return_conditional_losses_7782

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�#
�
__inference_gradient_func_2074
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference_gradient_func_2032_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_7787

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
B__inference_conv2d_6_layer_call_and_return_conditional_losses_7156

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:����������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
�
B__inference_conv2d_7_layer_call_and_return_conditional_losses_2755

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������[
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 l
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
�
B__inference_conv2d_6_layer_call_and_return_conditional_losses_7729

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:����������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�$
�
A__inference_model_1_layer_call_and_return_conditional_losses_3068

inputs(
conv2d_4_14998:
conv2d_4_15000:(
conv2d_5_15003: 
conv2d_5_15005: (
conv2d_6_15008: @
conv2d_6_15010:@)
conv2d_7_15013:@�
conv2d_7_15015:	� 
dense_1_15020:	�
dense_1_15022:
identity�� conv2d_4/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�
lambda_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_lambda_1_layer_call_and_return_conditional_losses_356�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0conv2d_4_14998conv2d_4_15000*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_2953�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0conv2d_5_15003conv2d_5_15005*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_conv2d_5_layer_call_and_return_conditional_losses_814�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_6_15008conv2d_6_15010*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_2964�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0conv2d_7_15013conv2d_7_15015*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_conv2d_7_layer_call_and_return_conditional_losses_2755�
*global_average_pooling2d_1/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_2942�
dropout_1/PartitionedCallPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dropout_1_layer_call_and_return_conditional_losses_330�
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_1_15020dense_1_15022*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_598�
NoOpNoOp!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
'__inference_restored_function_body_7034
x!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_my_model_1_layer_call_and_return_conditional_losses_3128o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
1
_output_shapes
:�����������

_user_specified_namex
�
�
D__inference_my_model_1_layer_call_and_return_conditional_losses_3128
input_1'
model_1_15200:
model_1_15202:'
model_1_15204: 
model_1_15206: '
model_1_15208: @
model_1_15210:@(
model_1_15212:@�
model_1_15214:	� 
model_1_15216:	�
model_1_15218:
identity��model_1/StatefulPartitionedCall�
model_1/StatefulPartitionedCallStatefulPartitionedCallinput_1model_1_15200model_1_15202model_1_15204model_1_15206model_1_15208model_1_15210model_1_15212model_1_15214model_1_15216model_1_15218*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_3068h
NoOpNoOp ^model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 w
IdentityIdentity(model_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2B
model_1/StatefulPartitionedCallmodel_1/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
D
(__inference_dropout_1_layer_call_fn_7770

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_7249a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
"__inference_signature_wrapper_7084

args_0!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *(
f#R!
__inference__wrapped_model_7057o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameargs_0
�

�
A__inference_dense_1_layer_call_and_return_conditional_losses_7205

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
&__inference_model_1_layer_call_fn_7315
input_2!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_7292o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_2
�

�
@__inference_dense_1_layer_call_and_return_conditional_losses_598

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�%
�
A__inference_model_1_layer_call_and_return_conditional_losses_7292

inputs'
conv2d_4_7264:
conv2d_4_7266:'
conv2d_5_7269: 
conv2d_5_7271: '
conv2d_6_7274: @
conv2d_6_7276:@(
conv2d_7_7279:@�
conv2d_7_7281:	�
dense_1_7286:	�
dense_1_7288:
identity�� conv2d_4/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�!dropout_1/StatefulPartitionedCall�
lambda_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_7109�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0conv2d_4_7264conv2d_4_7266*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_7122�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0conv2d_5_7269conv2d_5_7271*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_5_layer_call_and_return_conditional_losses_7139�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_6_7274conv2d_6_7276*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_7156�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0conv2d_7_7279conv2d_7_7281*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_7_layer_call_and_return_conditional_losses_7173�
*global_average_pooling2d_1/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_7091�
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_7192�
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_1_7286dense_1_7288*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_7205w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
]
A__inference_lambda_1_layer_call_and_return_conditional_losses_364

inputs
identityN
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �Bj
truedivRealDivinputstruediv/y:output:0*
T0*1
_output_shapes
:�����������J
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
subSubtruediv:z:0sub/y:output:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentitysub:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�)
�
!__inference_internal_grad_fn_1906
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19U
IdentityIdentityresult_grads_0*
T0*&
_output_shapes
:K

Identity_1Identityresult_grads_1*
T0*
_output_shapes
:W

Identity_2Identityresult_grads_2*
T0*&
_output_shapes
: K

Identity_3Identityresult_grads_3*
T0*
_output_shapes
: W

Identity_4Identityresult_grads_4*
T0*&
_output_shapes
: @K

Identity_5Identityresult_grads_5*
T0*
_output_shapes
:@X

Identity_6Identityresult_grads_6*
T0*'
_output_shapes
:@�L

Identity_7Identityresult_grads_7*
T0*
_output_shapes	
:�P

Identity_8Identityresult_grads_8*
T0*
_output_shapes
:	�K

Identity_9Identityresult_grads_9*
T0*
_output_shapes
:�
	IdentityN	IdentityNresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9*
T
2*)
_gradient_op_typeCustomGradient-177*�
_output_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�:\
Identity_10IdentityIdentityN:output:0*
T0*&
_output_shapes
:P
Identity_11IdentityIdentityN:output:1*
T0*
_output_shapes
:\
Identity_12IdentityIdentityN:output:2*
T0*&
_output_shapes
: P
Identity_13IdentityIdentityN:output:3*
T0*
_output_shapes
: \
Identity_14IdentityIdentityN:output:4*
T0*&
_output_shapes
: @P
Identity_15IdentityIdentityN:output:5*
T0*
_output_shapes
:@]
Identity_16IdentityIdentityN:output:6*
T0*'
_output_shapes
:@�Q
Identity_17IdentityIdentityN:output:7*
T0*
_output_shapes	
:�U
Identity_18IdentityIdentityN:output:8*
T0*
_output_shapes
:	�P
Identity_19IdentityIdentityN:output:9*
T0*
_output_shapes
:"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�#
�
__inference_gradient_func_1530
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference_gradient_func_1488_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�

�
&__inference_model_1_layer_call_fn_7519

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_7292o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
__inference__wrapped_model_7057

args_0)
my_model_1_7035:
my_model_1_7037:)
my_model_1_7039: 
my_model_1_7041: )
my_model_1_7043: @
my_model_1_7045:@*
my_model_1_7047:@�
my_model_1_7049:	�"
my_model_1_7051:	�
my_model_1_7053:
identity��"my_model_1/StatefulPartitionedCall�
"my_model_1/StatefulPartitionedCallStatefulPartitionedCallargs_0my_model_1_7035my_model_1_7037my_model_1_7039my_model_1_7041my_model_1_7043my_model_1_7045my_model_1_7047my_model_1_7049my_model_1_7051my_model_1_7053*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *0
f+R)
'__inference_restored_function_body_7034z
IdentityIdentity+my_model_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������k
NoOpNoOp#^my_model_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2H
"my_model_1/StatefulPartitionedCall"my_model_1/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameargs_0
�%
�
A__inference_model_1_layer_call_and_return_conditional_losses_2986

inputs(
conv2d_4_14941:
conv2d_4_14943:(
conv2d_5_14946: 
conv2d_5_14948: (
conv2d_6_14951: @
conv2d_6_14953:@)
conv2d_7_14956:@�
conv2d_7_14958:	� 
dense_1_14963:	�
dense_1_14965:
identity�� conv2d_4/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�!dropout_1/StatefulPartitionedCall�
lambda_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_lambda_1_layer_call_and_return_conditional_losses_364�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0conv2d_4_14941conv2d_4_14943*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_2953�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0conv2d_5_14946conv2d_5_14948*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_conv2d_5_layer_call_and_return_conditional_losses_814�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_6_14951conv2d_6_14953*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_2964�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0conv2d_7_14956conv2d_7_14958*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_conv2d_7_layer_call_and_return_conditional_losses_2755�
*global_average_pooling2d_1/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *]
fXRV
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_2942�
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dropout_1_layer_call_and_return_conditional_losses_587�
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_1_14963dense_1_14965*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_1_layer_call_and_return_conditional_losses_598�
NoOpNoOp!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
p
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_7091

inputs
identityg
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
B__inference_conv2d_5_layer_call_and_return_conditional_losses_7709

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�6
�
A__inference_model_1_layer_call_and_return_conditional_losses_7643

inputsA
'conv2d_4_conv2d_readvariableop_resource:6
(conv2d_4_biasadd_readvariableop_resource:A
'conv2d_5_conv2d_readvariableop_resource: 6
(conv2d_5_biasadd_readvariableop_resource: A
'conv2d_6_conv2d_readvariableop_resource: @6
(conv2d_6_biasadd_readvariableop_resource:@B
'conv2d_7_conv2d_readvariableop_resource:@�7
(conv2d_7_biasadd_readvariableop_resource:	�9
&dense_1_matmul_readvariableop_resource:	�5
'dense_1_biasadd_readvariableop_resource:
identity��conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�conv2d_5/BiasAdd/ReadVariableOp�conv2d_5/Conv2D/ReadVariableOp�conv2d_6/BiasAdd/ReadVariableOp�conv2d_6/Conv2D/ReadVariableOp�conv2d_7/BiasAdd/ReadVariableOp�conv2d_7/Conv2D/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOpW
lambda_1/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B|
lambda_1/truedivRealDivinputslambda_1/truediv/y:output:0*
T0*1
_output_shapes
:�����������S
lambda_1/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?~
lambda_1/subSublambda_1/truediv:z:0lambda_1/sub/y:output:0*
T0*1
_output_shapes
:������������
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_4/Conv2DConv2Dlambda_1/sub:z:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������l
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*1
_output_shapes
:������������
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_5/Conv2DConv2Dconv2d_4/Relu:activations:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
�
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� l
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_6/Conv2DConv2Dconv2d_5/Relu:activations:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingVALID*
strides
�
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@l
conv2d_6/ReluReluconv2d_6/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@�
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
conv2d_7/Conv2DConv2Dconv2d_6/Relu:activations:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������*
paddingVALID*
strides
�
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������m
conv2d_7/ReluReluconv2d_7/BiasAdd:output:0*
T0*2
_output_shapes 
:�������������
1global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
global_average_pooling2d_1/MeanMeanconv2d_7/Relu:activations:0:global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:����������{
dropout_1/IdentityIdentity(global_average_pooling2d_1/Mean:output:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_1/MatMulMatMuldropout_1/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�#
�
__inference_gradient_func_1718
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference_gradient_func_1676_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�
�
'__inference_conv2d_6_layer_call_fn_7718

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_7156y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:����������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�#
�
__inference_gradient_func_1258
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference_gradient_func_1216_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�
p
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_7760

inputs
identityg
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
p
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_2942

inputs
identityg
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
B__inference_conv2d_4_layer_call_and_return_conditional_losses_7689

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

b
C__inference_dropout_1_layer_call_and_return_conditional_losses_7192

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_conv2d_4_layer_call_fn_7678

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_7122y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�#
�
__inference_gradient_func_2032
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference_gradient_func_1990_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�

�
)__inference_my_model_1_layer_call_fn_3113
input_1!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_my_model_1_layer_call_and_return_conditional_losses_3083`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�%
�
A__inference_model_1_layer_call_and_return_conditional_losses_7212
input_2'
conv2d_4_7123:
conv2d_4_7125:'
conv2d_5_7140: 
conv2d_5_7142: '
conv2d_6_7157: @
conv2d_6_7159:@(
conv2d_7_7174:@�
conv2d_7_7176:	�
dense_1_7206:	�
dense_1_7208:
identity�� conv2d_4/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall� conv2d_6/StatefulPartitionedCall� conv2d_7/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�!dropout_1/StatefulPartitionedCall�
lambda_1/PartitionedCallPartitionedCallinput_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_7109�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0conv2d_4_7123conv2d_4_7125*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_7122�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0conv2d_5_7140conv2d_5_7142*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_5_layer_call_and_return_conditional_losses_7139�
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0conv2d_6_7157conv2d_6_7159*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_7156�
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0conv2d_7_7174conv2d_7_7176*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_7_layer_call_and_return_conditional_losses_7173�
*global_average_pooling2d_1/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_7091�
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_7192�
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_1_7206dense_1_7208*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_7205w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_2
�
^
B__inference_lambda_1_layer_call_and_return_conditional_losses_7661

inputs
identityN
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �Bj
truedivRealDivinputstruediv/y:output:0*
T0*1
_output_shapes
:�����������J
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
subSubtruediv:z:0sub/y:output:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentitysub:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�#
�
__inference_gradient_func_1802
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference_gradient_func_1760_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�

�
A__inference_dense_1_layer_call_and_return_conditional_losses_7807

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�#
�
__inference_gradient_func_1028
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *&
f!R
__inference_gradient_func_986_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�)
�
!__inference_internal_grad_fn_1592
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19U
IdentityIdentityresult_grads_0*
T0*&
_output_shapes
:K

Identity_1Identityresult_grads_1*
T0*
_output_shapes
:W

Identity_2Identityresult_grads_2*
T0*&
_output_shapes
: K

Identity_3Identityresult_grads_3*
T0*
_output_shapes
: W

Identity_4Identityresult_grads_4*
T0*&
_output_shapes
: @K

Identity_5Identityresult_grads_5*
T0*
_output_shapes
:@X

Identity_6Identityresult_grads_6*
T0*'
_output_shapes
:@�L

Identity_7Identityresult_grads_7*
T0*
_output_shapes	
:�P

Identity_8Identityresult_grads_8*
T0*
_output_shapes
:	�K

Identity_9Identityresult_grads_9*
T0*
_output_shapes
:�
	IdentityN	IdentityNresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9*
T
2*)
_gradient_op_typeCustomGradient-178*�
_output_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�:\
Identity_10IdentityIdentityN:output:0*
T0*&
_output_shapes
:P
Identity_11IdentityIdentityN:output:1*
T0*
_output_shapes
:\
Identity_12IdentityIdentityN:output:2*
T0*&
_output_shapes
: P
Identity_13IdentityIdentityN:output:3*
T0*
_output_shapes
: \
Identity_14IdentityIdentityN:output:4*
T0*&
_output_shapes
: @P
Identity_15IdentityIdentityN:output:5*
T0*
_output_shapes
:@]
Identity_16IdentityIdentityN:output:6*
T0*'
_output_shapes
:@�Q
Identity_17IdentityIdentityN:output:7*
T0*
_output_shapes	
:�U
Identity_18IdentityIdentityN:output:8*
T0*
_output_shapes
:	�P
Identity_19IdentityIdentityN:output:9*
T0*
_output_shapes
:"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�#
�
__inference_gradient_func_1676
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference_gradient_func_1634_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_7249

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�)
�
!__inference_internal_grad_fn_1090
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19U
IdentityIdentityresult_grads_0*
T0*&
_output_shapes
:K

Identity_1Identityresult_grads_1*
T0*
_output_shapes
:W

Identity_2Identityresult_grads_2*
T0*&
_output_shapes
: K

Identity_3Identityresult_grads_3*
T0*
_output_shapes
: W

Identity_4Identityresult_grads_4*
T0*&
_output_shapes
: @K

Identity_5Identityresult_grads_5*
T0*
_output_shapes
:@X

Identity_6Identityresult_grads_6*
T0*'
_output_shapes
:@�L

Identity_7Identityresult_grads_7*
T0*
_output_shapes	
:�P

Identity_8Identityresult_grads_8*
T0*
_output_shapes
:	�K

Identity_9Identityresult_grads_9*
T0*
_output_shapes
:�
	IdentityN	IdentityNresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9*
T
2*)
_gradient_op_typeCustomGradient-180*�
_output_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�:\
Identity_10IdentityIdentityN:output:0*
T0*&
_output_shapes
:P
Identity_11IdentityIdentityN:output:1*
T0*
_output_shapes
:\
Identity_12IdentityIdentityN:output:2*
T0*&
_output_shapes
: P
Identity_13IdentityIdentityN:output:3*
T0*
_output_shapes
: \
Identity_14IdentityIdentityN:output:4*
T0*&
_output_shapes
: @P
Identity_15IdentityIdentityN:output:5*
T0*
_output_shapes
:@]
Identity_16IdentityIdentityN:output:6*
T0*'
_output_shapes
:@�Q
Identity_17IdentityIdentityN:output:7*
T0*
_output_shapes	
:�U
Identity_18IdentityIdentityN:output:8*
T0*
_output_shapes
:	�P
Identity_19IdentityIdentityN:output:9*
T0*
_output_shapes
:"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�F
�	
C__inference_my_model_1_layer_call_and_return_conditional_losses_429
xI
/model_1_conv2d_4_conv2d_readvariableop_resource:>
0model_1_conv2d_4_biasadd_readvariableop_resource:I
/model_1_conv2d_5_conv2d_readvariableop_resource: >
0model_1_conv2d_5_biasadd_readvariableop_resource: I
/model_1_conv2d_6_conv2d_readvariableop_resource: @>
0model_1_conv2d_6_biasadd_readvariableop_resource:@J
/model_1_conv2d_7_conv2d_readvariableop_resource:@�?
0model_1_conv2d_7_biasadd_readvariableop_resource:	�A
.model_1_dense_1_matmul_readvariableop_resource:	�=
/model_1_dense_1_biasadd_readvariableop_resource:
identity��'model_1/conv2d_4/BiasAdd/ReadVariableOp�&model_1/conv2d_4/Conv2D/ReadVariableOp�'model_1/conv2d_5/BiasAdd/ReadVariableOp�&model_1/conv2d_5/Conv2D/ReadVariableOp�'model_1/conv2d_6/BiasAdd/ReadVariableOp�&model_1/conv2d_6/Conv2D/ReadVariableOp�'model_1/conv2d_7/BiasAdd/ReadVariableOp�&model_1/conv2d_7/Conv2D/ReadVariableOp�&model_1/dense_1/BiasAdd/ReadVariableOp�%model_1/dense_1/MatMul/ReadVariableOp_
model_1/lambda_1/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
model_1/lambda_1/truedivRealDivx#model_1/lambda_1/truediv/y:output:0*
T0*1
_output_shapes
:�����������[
model_1/lambda_1/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
model_1/lambda_1/subSubmodel_1/lambda_1/truediv:z:0model_1/lambda_1/sub/y:output:0*
T0*1
_output_shapes
:������������
&model_1/conv2d_4/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_1/conv2d_4/Conv2DConv2Dmodel_1/lambda_1/sub:z:0.model_1/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
'model_1/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/conv2d_4/BiasAddBiasAdd model_1/conv2d_4/Conv2D:output:0/model_1/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������|
model_1/conv2d_4/ReluRelu!model_1/conv2d_4/BiasAdd:output:0*
T0*1
_output_shapes
:������������
&model_1/conv2d_5/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
model_1/conv2d_5/Conv2DConv2D#model_1/conv2d_4/Relu:activations:0.model_1/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
�
'model_1/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_1/conv2d_5/BiasAddBiasAdd model_1/conv2d_5/Conv2D:output:0/model_1/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� |
model_1/conv2d_5/ReluRelu!model_1/conv2d_5/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
&model_1/conv2d_6/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
model_1/conv2d_6/Conv2DConv2D#model_1/conv2d_5/Relu:activations:0.model_1/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingVALID*
strides
�
'model_1/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_1/conv2d_6/BiasAddBiasAdd model_1/conv2d_6/Conv2D:output:0/model_1/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@|
model_1/conv2d_6/ReluRelu!model_1/conv2d_6/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@�
&model_1/conv2d_7/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_7_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
model_1/conv2d_7/Conv2DConv2D#model_1/conv2d_6/Relu:activations:0.model_1/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������*
paddingVALID*
strides
�
'model_1/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/conv2d_7/BiasAddBiasAdd model_1/conv2d_7/Conv2D:output:0/model_1/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������}
model_1/conv2d_7/ReluRelu!model_1/conv2d_7/BiasAdd:output:0*
T0*2
_output_shapes 
:�������������
9model_1/global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
'model_1/global_average_pooling2d_1/MeanMean#model_1/conv2d_7/Relu:activations:0Bmodel_1/global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:����������d
model_1/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
model_1/dropout_1/dropout/MulMul0model_1/global_average_pooling2d_1/Mean:output:0(model_1/dropout_1/dropout/Const:output:0*
T0*(
_output_shapes
:�����������
model_1/dropout_1/dropout/ShapeShape0model_1/global_average_pooling2d_1/Mean:output:0*
T0*
_output_shapes
::���
6model_1/dropout_1/dropout/random_uniform/RandomUniformRandomUniform(model_1/dropout_1/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0m
(model_1/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
&model_1/dropout_1/dropout/GreaterEqualGreaterEqual?model_1/dropout_1/dropout/random_uniform/RandomUniform:output:01model_1/dropout_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������f
!model_1/dropout_1/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
"model_1/dropout_1/dropout/SelectV2SelectV2*model_1/dropout_1/dropout/GreaterEqual:z:0!model_1/dropout_1/dropout/Mul:z:0*model_1/dropout_1/dropout/Const_1:output:0*
T0*(
_output_shapes
:�����������
%model_1/dense_1/MatMul/ReadVariableOpReadVariableOp.model_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model_1/dense_1/MatMulMatMul+model_1/dropout_1/dropout/SelectV2:output:0-model_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
&model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_1/dense_1/BiasAddBiasAdd model_1/dense_1/MatMul:product:0.model_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
model_1/dense_1/SoftmaxSoftmax model_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:����������
NoOpNoOp(^model_1/conv2d_4/BiasAdd/ReadVariableOp'^model_1/conv2d_4/Conv2D/ReadVariableOp(^model_1/conv2d_5/BiasAdd/ReadVariableOp'^model_1/conv2d_5/Conv2D/ReadVariableOp(^model_1/conv2d_6/BiasAdd/ReadVariableOp'^model_1/conv2d_6/Conv2D/ReadVariableOp(^model_1/conv2d_7/BiasAdd/ReadVariableOp'^model_1/conv2d_7/Conv2D/ReadVariableOp'^model_1/dense_1/BiasAdd/ReadVariableOp&^model_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity!model_1/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2R
'model_1/conv2d_4/BiasAdd/ReadVariableOp'model_1/conv2d_4/BiasAdd/ReadVariableOp2P
&model_1/conv2d_4/Conv2D/ReadVariableOp&model_1/conv2d_4/Conv2D/ReadVariableOp2R
'model_1/conv2d_5/BiasAdd/ReadVariableOp'model_1/conv2d_5/BiasAdd/ReadVariableOp2P
&model_1/conv2d_5/Conv2D/ReadVariableOp&model_1/conv2d_5/Conv2D/ReadVariableOp2R
'model_1/conv2d_6/BiasAdd/ReadVariableOp'model_1/conv2d_6/BiasAdd/ReadVariableOp2P
&model_1/conv2d_6/Conv2D/ReadVariableOp&model_1/conv2d_6/Conv2D/ReadVariableOp2R
'model_1/conv2d_7/BiasAdd/ReadVariableOp'model_1/conv2d_7/BiasAdd/ReadVariableOp2P
&model_1/conv2d_7/Conv2D/ReadVariableOp&model_1/conv2d_7/Conv2D/ReadVariableOp2P
&model_1/dense_1/BiasAdd/ReadVariableOp&model_1/dense_1/BiasAdd/ReadVariableOp2N
%model_1/dense_1/MatMul/ReadVariableOp%model_1/dense_1/MatMul/ReadVariableOp:T P
1
_output_shapes
:�����������

_user_specified_namex
�"
�
__inference_gradient_func_8089
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *'
f"R 
__inference_gradient_func_1028_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�
]
A__inference_lambda_1_layer_call_and_return_conditional_losses_356

inputs
identityN
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �Bj
truedivRealDivinputstruediv/y:output:0*
T0*1
_output_shapes
:�����������J
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
subSubtruediv:z:0sub/y:output:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentitysub:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
B__inference_conv2d_6_layer_call_and_return_conditional_losses_2964

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:����������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�)
�
!__inference_internal_grad_fn_1320
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19U
IdentityIdentityresult_grads_0*
T0*&
_output_shapes
:K

Identity_1Identityresult_grads_1*
T0*
_output_shapes
:W

Identity_2Identityresult_grads_2*
T0*&
_output_shapes
: K

Identity_3Identityresult_grads_3*
T0*
_output_shapes
: W

Identity_4Identityresult_grads_4*
T0*&
_output_shapes
: @K

Identity_5Identityresult_grads_5*
T0*
_output_shapes
:@X

Identity_6Identityresult_grads_6*
T0*'
_output_shapes
:@�L

Identity_7Identityresult_grads_7*
T0*
_output_shapes	
:�P

Identity_8Identityresult_grads_8*
T0*
_output_shapes
:	�K

Identity_9Identityresult_grads_9*
T0*
_output_shapes
:�
	IdentityN	IdentityNresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9*
T
2*)
_gradient_op_typeCustomGradient-179*�
_output_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�:\
Identity_10IdentityIdentityN:output:0*
T0*&
_output_shapes
:P
Identity_11IdentityIdentityN:output:1*
T0*
_output_shapes
:\
Identity_12IdentityIdentityN:output:2*
T0*&
_output_shapes
: P
Identity_13IdentityIdentityN:output:3*
T0*
_output_shapes
: \
Identity_14IdentityIdentityN:output:4*
T0*&
_output_shapes
: @P
Identity_15IdentityIdentityN:output:5*
T0*
_output_shapes
:@]
Identity_16IdentityIdentityN:output:6*
T0*'
_output_shapes
:@�Q
Identity_17IdentityIdentityN:output:7*
T0*
_output_shapes	
:�U
Identity_18IdentityIdentityN:output:8*
T0*
_output_shapes
:	�P
Identity_19IdentityIdentityN:output:9*
T0*
_output_shapes
:"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�"
�
__inference_gradient_func_7960
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *'
f"R 
__inference_gradient_func_1844_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�
^
B__inference_lambda_1_layer_call_and_return_conditional_losses_7669

inputs
identityN
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �Bj
truedivRealDivinputstruediv/y:output:0*
T0*1
_output_shapes
:�����������J
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
subSubtruediv:z:0sub/y:output:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentitysub:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
B__inference_conv2d_7_layer_call_and_return_conditional_losses_7173

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������[
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:������������l
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
ۃ
�#
__inference_Train_2692
x
yT
:my_model_1_model_1_conv2d_4_conv2d_readvariableop_resource:I
;my_model_1_model_1_conv2d_4_biasadd_readvariableop_resource:T
:my_model_1_model_1_conv2d_5_conv2d_readvariableop_resource: I
;my_model_1_model_1_conv2d_5_biasadd_readvariableop_resource: T
:my_model_1_model_1_conv2d_6_conv2d_readvariableop_resource: @I
;my_model_1_model_1_conv2d_6_biasadd_readvariableop_resource:@U
:my_model_1_model_1_conv2d_7_conv2d_readvariableop_resource:@�J
;my_model_1_model_1_conv2d_7_biasadd_readvariableop_resource:	�L
9my_model_1_model_1_dense_1_matmul_readvariableop_resource:	�H
:my_model_1_model_1_dense_1_biasadd_readvariableop_resource:!
readvariableop_resource:	 #
readvariableop_1_resource: 7
sub_2_readvariableop_resource:7
sub_3_readvariableop_resource:+
sub_6_readvariableop_resource:+
sub_7_readvariableop_resource:8
sub_10_readvariableop_resource: 8
sub_11_readvariableop_resource: ,
sub_14_readvariableop_resource: ,
sub_15_readvariableop_resource: 8
sub_18_readvariableop_resource: @8
sub_19_readvariableop_resource: @,
sub_22_readvariableop_resource:@,
sub_23_readvariableop_resource:@9
sub_26_readvariableop_resource:@�9
sub_27_readvariableop_resource:@�-
sub_30_readvariableop_resource:	�-
sub_31_readvariableop_resource:	�1
sub_34_readvariableop_resource:	�1
sub_35_readvariableop_resource:	�,
sub_38_readvariableop_resource:,
sub_39_readvariableop_resource:��AssignAddVariableOp�AssignAddVariableOp_1�AssignAddVariableOp_10�AssignAddVariableOp_11�AssignAddVariableOp_12�AssignAddVariableOp_13�AssignAddVariableOp_14�AssignAddVariableOp_15�AssignAddVariableOp_16�AssignAddVariableOp_17�AssignAddVariableOp_18�AssignAddVariableOp_19�AssignAddVariableOp_2�AssignAddVariableOp_20�AssignAddVariableOp_3�AssignAddVariableOp_4�AssignAddVariableOp_5�AssignAddVariableOp_6�AssignAddVariableOp_7�AssignAddVariableOp_8�AssignAddVariableOp_9�AssignSubVariableOp�AssignSubVariableOp_1�AssignSubVariableOp_2�AssignSubVariableOp_3�AssignSubVariableOp_4�AssignSubVariableOp_5�AssignSubVariableOp_6�AssignSubVariableOp_7�AssignSubVariableOp_8�AssignSubVariableOp_9�ReadVariableOp�ReadVariableOp_1�ReadVariableOp_10�ReadVariableOp_11�ReadVariableOp_12�ReadVariableOp_13�ReadVariableOp_14�ReadVariableOp_15�ReadVariableOp_16�ReadVariableOp_17�ReadVariableOp_18�ReadVariableOp_19�ReadVariableOp_2�ReadVariableOp_20�ReadVariableOp_21�ReadVariableOp_22�ReadVariableOp_23�ReadVariableOp_24�ReadVariableOp_25�ReadVariableOp_26�ReadVariableOp_27�ReadVariableOp_28�ReadVariableOp_29�ReadVariableOp_3�ReadVariableOp_4�ReadVariableOp_5�ReadVariableOp_6�ReadVariableOp_7�ReadVariableOp_8�ReadVariableOp_9�Sqrt_1/ReadVariableOp�Sqrt_11/ReadVariableOp�Sqrt_13/ReadVariableOp�Sqrt_15/ReadVariableOp�Sqrt_17/ReadVariableOp�Sqrt_19/ReadVariableOp�Sqrt_3/ReadVariableOp�Sqrt_5/ReadVariableOp�Sqrt_7/ReadVariableOp�Sqrt_9/ReadVariableOp�2my_model_1/model_1/conv2d_4/BiasAdd/ReadVariableOp�1my_model_1/model_1/conv2d_4/Conv2D/ReadVariableOp�2my_model_1/model_1/conv2d_5/BiasAdd/ReadVariableOp�1my_model_1/model_1/conv2d_5/Conv2D/ReadVariableOp�2my_model_1/model_1/conv2d_6/BiasAdd/ReadVariableOp�1my_model_1/model_1/conv2d_6/Conv2D/ReadVariableOp�2my_model_1/model_1/conv2d_7/BiasAdd/ReadVariableOp�1my_model_1/model_1/conv2d_7/Conv2D/ReadVariableOp�1my_model_1/model_1/dense_1/BiasAdd/ReadVariableOp�0my_model_1/model_1/dense_1/MatMul/ReadVariableOp�sub_10/ReadVariableOp�sub_11/ReadVariableOp�sub_14/ReadVariableOp�sub_15/ReadVariableOp�sub_18/ReadVariableOp�sub_19/ReadVariableOp�sub_2/ReadVariableOp�sub_22/ReadVariableOp�sub_23/ReadVariableOp�sub_26/ReadVariableOp�sub_27/ReadVariableOp�sub_3/ReadVariableOp�sub_30/ReadVariableOp�sub_31/ReadVariableOp�sub_34/ReadVariableOp�sub_35/ReadVariableOp�sub_38/ReadVariableOp�sub_39/ReadVariableOp�sub_6/ReadVariableOp�sub_7/ReadVariableOpj
%my_model_1/model_1/lambda_1/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B�
#my_model_1/model_1/lambda_1/truedivRealDivx.my_model_1/model_1/lambda_1/truediv/y:output:0*
T0*(
_output_shapes
:
��f
!my_model_1/model_1/lambda_1/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
my_model_1/model_1/lambda_1/subSub'my_model_1/model_1/lambda_1/truediv:z:0*my_model_1/model_1/lambda_1/sub/y:output:0*
T0*(
_output_shapes
:
���
1my_model_1/model_1/conv2d_4/Conv2D/ReadVariableOpReadVariableOp:my_model_1_model_1_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
"my_model_1/model_1/conv2d_4/Conv2DConv2D#my_model_1/model_1/lambda_1/sub:z:09my_model_1/model_1/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:
��*
paddingVALID*
strides
�
2my_model_1/model_1/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp;my_model_1_model_1_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
#my_model_1/model_1/conv2d_4/BiasAddBiasAdd+my_model_1/model_1/conv2d_4/Conv2D:output:0:my_model_1/model_1/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:
���
 my_model_1/model_1/conv2d_4/ReluRelu,my_model_1/model_1/conv2d_4/BiasAdd:output:0*
T0*(
_output_shapes
:
���
1my_model_1/model_1/conv2d_5/Conv2D/ReadVariableOpReadVariableOp:my_model_1_model_1_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
"my_model_1/model_1/conv2d_5/Conv2DConv2D.my_model_1/model_1/conv2d_4/Relu:activations:09my_model_1/model_1/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:
�� *
paddingVALID*
strides
�
2my_model_1/model_1/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp;my_model_1_model_1_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
#my_model_1/model_1/conv2d_5/BiasAddBiasAdd+my_model_1/model_1/conv2d_5/Conv2D:output:0:my_model_1/model_1/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:
�� �
 my_model_1/model_1/conv2d_5/ReluRelu,my_model_1/model_1/conv2d_5/BiasAdd:output:0*
T0*(
_output_shapes
:
�� �
1my_model_1/model_1/conv2d_6/Conv2D/ReadVariableOpReadVariableOp:my_model_1_model_1_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
"my_model_1/model_1/conv2d_6/Conv2DConv2D.my_model_1/model_1/conv2d_5/Relu:activations:09my_model_1/model_1/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:
��@*
paddingVALID*
strides
�
2my_model_1/model_1/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp;my_model_1_model_1_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
#my_model_1/model_1/conv2d_6/BiasAddBiasAdd+my_model_1/model_1/conv2d_6/Conv2D:output:0:my_model_1/model_1/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:
��@�
 my_model_1/model_1/conv2d_6/ReluRelu,my_model_1/model_1/conv2d_6/BiasAdd:output:0*
T0*(
_output_shapes
:
��@�
1my_model_1/model_1/conv2d_7/Conv2D/ReadVariableOpReadVariableOp:my_model_1_model_1_conv2d_7_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
"my_model_1/model_1/conv2d_7/Conv2DConv2D.my_model_1/model_1/conv2d_6/Relu:activations:09my_model_1/model_1/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*)
_output_shapes
:
���*
paddingVALID*
strides
�
2my_model_1/model_1/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp;my_model_1_model_1_conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#my_model_1/model_1/conv2d_7/BiasAddBiasAdd+my_model_1/model_1/conv2d_7/Conv2D:output:0:my_model_1/model_1/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:
����
 my_model_1/model_1/conv2d_7/ReluRelu,my_model_1/model_1/conv2d_7/BiasAdd:output:0*
T0*)
_output_shapes
:
����
Dmy_model_1/model_1/global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
2my_model_1/model_1/global_average_pooling2d_1/MeanMean.my_model_1/model_1/conv2d_7/Relu:activations:0Mmy_model_1/model_1/global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*
_output_shapes
:	
��
%my_model_1/model_1/dropout_1/IdentityIdentity;my_model_1/model_1/global_average_pooling2d_1/Mean:output:0*
T0*
_output_shapes
:	
��
0my_model_1/model_1/dense_1/MatMul/ReadVariableOpReadVariableOp9my_model_1_model_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
!my_model_1/model_1/dense_1/MatMulMatMul.my_model_1/model_1/dropout_1/Identity:output:08my_model_1/model_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
�
1my_model_1/model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp:my_model_1_model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
"my_model_1/model_1/dense_1/BiasAddBiasAdd+my_model_1/model_1/dense_1/MatMul:product:09my_model_1/model_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:
�
"my_model_1/model_1/dense_1/SoftmaxSoftmax+my_model_1/model_1/dense_1/BiasAdd:output:0*
T0*
_output_shapes

:
J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *.�)s
addAddV2,my_model_1/model_1/dense_1/Softmax:softmax:0add/y:output:0*
T0*
_output_shapes

:
<
LogLogadd:z:0*
T0*
_output_shapes

:
?
mulMulyLog:y:0*
T0*
_output_shapes

:
W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :X
SumSummul:z:0Sum/reduction_indices:output:0*
T0*
_output_shapes
:
=
NegNegSum:output:0*
T0*
_output_shapes
:
O
ConstConst*
_output_shapes
:*
dtype0*
valueB: F
MeanMeanNeg:y:0Const:output:0*
T0*
_output_shapes
: I
onesConst*
_output_shapes
: *
dtype0*
valueB
 *  �?e
gradient_tape/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:z
gradient_tape/ReshapeReshapeones:output:0$gradient_tape/Reshape/shape:output:0*
T0*
_output_shapes
:]
gradient_tape/ConstConst*
_output_shapes
:*
dtype0*
valueB:
}
gradient_tape/TileTilegradient_tape/Reshape:output:0gradient_tape/Const:output:0*
T0*
_output_shapes
:
Z
gradient_tape/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   A�
gradient_tape/truedivRealDivgradient_tape/Tile:output:0gradient_tape/Const_1:output:0*
T0*
_output_shapes
:
X
gradient_tape/NegNeggradient_tape/truediv:z:0*
T0*
_output_shapes
:
h
gradient_tape/Maximum/xConst*
_output_shapes
:*
dtype0*
valueB"
      Y
gradient_tape/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :�
gradient_tape/MaximumMaximum gradient_tape/Maximum/x:output:0 gradient_tape/Maximum/y:output:0*
T0*
_output_shapes
:i
gradient_tape/floordiv/xConst*
_output_shapes
:*
dtype0*
valueB"
      �
gradient_tape/floordivFloorDiv!gradient_tape/floordiv/x:output:0gradient_tape/Maximum:z:0*
T0*
_output_shapes
:n
gradient_tape/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"
      �
gradient_tape/Reshape_1Reshapegradient_tape/Neg:y:0&gradient_tape/Reshape_1/shape:output:0*
T0*
_output_shapes

:
o
gradient_tape/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
gradient_tape/Tile_1Tile gradient_tape/Reshape_1:output:0'gradient_tape/Tile_1/multiples:output:0*
T0*
_output_shapes

:
m
gradient_tape/mul/MulMulgradient_tape/Tile_1:output:0Log:y:0*
T0*
_output_shapes

:
�
gradient_tape/mul/Mul_1Mulgradient_tape/Tile_1:output:0y*
T0*&
 _has_manual_control_dependencies(*
_output_shapes

:
r
gradient_tape/Reciprocal
Reciprocaladd:z:0^gradient_tape/mul/Mul_1*
T0*
_output_shapes

:
|
gradient_tape/mulMulgradient_tape/mul/Mul_1:z:0gradient_tape/Reciprocal:y:0*
T0*
_output_shapes

:
�
,gradient_tape/my_model_1/model_1/dense_1/mulMulgradient_tape/mul:z:0,my_model_1/model_1/dense_1/Softmax:softmax:0*
T0*
_output_shapes

:
�
>gradient_tape/my_model_1/model_1/dense_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
,gradient_tape/my_model_1/model_1/dense_1/SumSum0gradient_tape/my_model_1/model_1/dense_1/mul:z:0Ggradient_tape/my_model_1/model_1/dense_1/Sum/reduction_indices:output:0*
T0*
_output_shapes

:
*
	keep_dims(�
,gradient_tape/my_model_1/model_1/dense_1/subSubgradient_tape/mul:z:05gradient_tape/my_model_1/model_1/dense_1/Sum:output:0*
T0*
_output_shapes

:
�
.gradient_tape/my_model_1/model_1/dense_1/mul_1Mul0gradient_tape/my_model_1/model_1/dense_1/sub:z:0,my_model_1/model_1/dense_1/Softmax:softmax:0*
T0*
_output_shapes

:
�
<gradient_tape/my_model_1/model_1/dense_1/BiasAdd/BiasAddGradBiasAddGrad2gradient_tape/my_model_1/model_1/dense_1/mul_1:z:0*
T0*
_output_shapes
:�
6gradient_tape/my_model_1/model_1/dense_1/MatMul/MatMulMatMul2gradient_tape/my_model_1/model_1/dense_1/mul_1:z:08my_model_1/model_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	
�*
transpose_b(�
8gradient_tape/my_model_1/model_1/dense_1/MatMul/MatMul_1MatMul.my_model_1/model_1/dropout_1/Identity:output:02gradient_tape/my_model_1/model_1/dense_1/mul_1:z:0*
T0*
_output_shapes
:	�*
transpose_a(�
Egradient_tape/my_model_1/model_1/global_average_pooling2d_1/Maximum/xConst*
_output_shapes
:*
dtype0*%
valueB"
         �   �
Egradient_tape/my_model_1/model_1/global_average_pooling2d_1/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :�
Cgradient_tape/my_model_1/model_1/global_average_pooling2d_1/MaximumMaximumNgradient_tape/my_model_1/model_1/global_average_pooling2d_1/Maximum/x:output:0Ngradient_tape/my_model_1/model_1/global_average_pooling2d_1/Maximum/y:output:0*
T0*
_output_shapes
:�
Fgradient_tape/my_model_1/model_1/global_average_pooling2d_1/floordiv/xConst*
_output_shapes
:*
dtype0*%
valueB"
   �   �   �   �
Dgradient_tape/my_model_1/model_1/global_average_pooling2d_1/floordivFloorDivOgradient_tape/my_model_1/model_1/global_average_pooling2d_1/floordiv/x:output:0Ggradient_tape/my_model_1/model_1/global_average_pooling2d_1/Maximum:z:0*
T0*
_output_shapes
:�
Igradient_tape/my_model_1/model_1/global_average_pooling2d_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"
         �   �
Cgradient_tape/my_model_1/model_1/global_average_pooling2d_1/ReshapeReshape@gradient_tape/my_model_1/model_1/dense_1/MatMul/MatMul:product:0Rgradient_tape/my_model_1/model_1/global_average_pooling2d_1/Reshape/shape:output:0*
T0*'
_output_shapes
:
��
Jgradient_tape/my_model_1/model_1/global_average_pooling2d_1/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   �   �      �
@gradient_tape/my_model_1/model_1/global_average_pooling2d_1/TileTileLgradient_tape/my_model_1/model_1/global_average_pooling2d_1/Reshape:output:0Sgradient_tape/my_model_1/model_1/global_average_pooling2d_1/Tile/multiples:output:0*
T0*)
_output_shapes
:
����
Agradient_tape/my_model_1/model_1/global_average_pooling2d_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 * P;G�
Cgradient_tape/my_model_1/model_1/global_average_pooling2d_1/truedivRealDivIgradient_tape/my_model_1/model_1/global_average_pooling2d_1/Tile:output:0Jgradient_tape/my_model_1/model_1/global_average_pooling2d_1/Const:output:0*
T0*)
_output_shapes
:
����
2gradient_tape/my_model_1/model_1/conv2d_7/ReluGradReluGradGgradient_tape/my_model_1/model_1/global_average_pooling2d_1/truediv:z:0.my_model_1/model_1/conv2d_7/Relu:activations:0*
T0*)
_output_shapes
:
����
=gradient_tape/my_model_1/model_1/conv2d_7/BiasAdd/BiasAddGradBiasAddGrad>gradient_tape/my_model_1/model_1/conv2d_7/ReluGrad:backprops:0*
T0*
_output_shapes	
:��
7gradient_tape/my_model_1/model_1/conv2d_7/Conv2D/ShapeNShapeN.my_model_1/model_1/conv2d_6/Relu:activations:09my_model_1/model_1/conv2d_7/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
Dgradient_tape/my_model_1/model_1/conv2d_7/Conv2D/Conv2DBackpropInputConv2DBackpropInput@gradient_tape/my_model_1/model_1/conv2d_7/Conv2D/ShapeN:output:09my_model_1/model_1/conv2d_7/Conv2D/ReadVariableOp:value:0>gradient_tape/my_model_1/model_1/conv2d_7/ReluGrad:backprops:0*
T0*(
_output_shapes
:
��@*
paddingVALID*
strides
�
Egradient_tape/my_model_1/model_1/conv2d_7/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter.my_model_1/model_1/conv2d_6/Relu:activations:0@gradient_tape/my_model_1/model_1/conv2d_7/Conv2D/ShapeN:output:1>gradient_tape/my_model_1/model_1/conv2d_7/ReluGrad:backprops:0*
T0*'
_output_shapes
:@�*
paddingVALID*
strides
�
2gradient_tape/my_model_1/model_1/conv2d_6/ReluGradReluGradMgradient_tape/my_model_1/model_1/conv2d_7/Conv2D/Conv2DBackpropInput:output:0.my_model_1/model_1/conv2d_6/Relu:activations:0*
T0*(
_output_shapes
:
��@�
=gradient_tape/my_model_1/model_1/conv2d_6/BiasAdd/BiasAddGradBiasAddGrad>gradient_tape/my_model_1/model_1/conv2d_6/ReluGrad:backprops:0*
T0*
_output_shapes
:@�
7gradient_tape/my_model_1/model_1/conv2d_6/Conv2D/ShapeNShapeN.my_model_1/model_1/conv2d_5/Relu:activations:09my_model_1/model_1/conv2d_6/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
Dgradient_tape/my_model_1/model_1/conv2d_6/Conv2D/Conv2DBackpropInputConv2DBackpropInput@gradient_tape/my_model_1/model_1/conv2d_6/Conv2D/ShapeN:output:09my_model_1/model_1/conv2d_6/Conv2D/ReadVariableOp:value:0>gradient_tape/my_model_1/model_1/conv2d_6/ReluGrad:backprops:0*
T0*(
_output_shapes
:
�� *
paddingVALID*
strides
�
Egradient_tape/my_model_1/model_1/conv2d_6/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter.my_model_1/model_1/conv2d_5/Relu:activations:0@gradient_tape/my_model_1/model_1/conv2d_6/Conv2D/ShapeN:output:1>gradient_tape/my_model_1/model_1/conv2d_6/ReluGrad:backprops:0*
T0*&
_output_shapes
: @*
paddingVALID*
strides
�
2gradient_tape/my_model_1/model_1/conv2d_5/ReluGradReluGradMgradient_tape/my_model_1/model_1/conv2d_6/Conv2D/Conv2DBackpropInput:output:0.my_model_1/model_1/conv2d_5/Relu:activations:0*
T0*(
_output_shapes
:
�� �
=gradient_tape/my_model_1/model_1/conv2d_5/BiasAdd/BiasAddGradBiasAddGrad>gradient_tape/my_model_1/model_1/conv2d_5/ReluGrad:backprops:0*
T0*
_output_shapes
: �
7gradient_tape/my_model_1/model_1/conv2d_5/Conv2D/ShapeNShapeN.my_model_1/model_1/conv2d_4/Relu:activations:09my_model_1/model_1/conv2d_5/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
Dgradient_tape/my_model_1/model_1/conv2d_5/Conv2D/Conv2DBackpropInputConv2DBackpropInput@gradient_tape/my_model_1/model_1/conv2d_5/Conv2D/ShapeN:output:09my_model_1/model_1/conv2d_5/Conv2D/ReadVariableOp:value:0>gradient_tape/my_model_1/model_1/conv2d_5/ReluGrad:backprops:0*
T0*(
_output_shapes
:
��*
paddingVALID*
strides
�
Egradient_tape/my_model_1/model_1/conv2d_5/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter.my_model_1/model_1/conv2d_4/Relu:activations:0@gradient_tape/my_model_1/model_1/conv2d_5/Conv2D/ShapeN:output:1>gradient_tape/my_model_1/model_1/conv2d_5/ReluGrad:backprops:0*
T0*&
_output_shapes
: *
paddingVALID*
strides
�
2gradient_tape/my_model_1/model_1/conv2d_4/ReluGradReluGradMgradient_tape/my_model_1/model_1/conv2d_5/Conv2D/Conv2DBackpropInput:output:0.my_model_1/model_1/conv2d_4/Relu:activations:0*
T0*(
_output_shapes
:
���
=gradient_tape/my_model_1/model_1/conv2d_4/BiasAdd/BiasAddGradBiasAddGrad>gradient_tape/my_model_1/model_1/conv2d_4/ReluGrad:backprops:0*
T0*
_output_shapes
:�
7gradient_tape/my_model_1/model_1/conv2d_4/Conv2D/ShapeNShapeN#my_model_1/model_1/lambda_1/sub:z:09my_model_1/model_1/conv2d_4/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
Dgradient_tape/my_model_1/model_1/conv2d_4/Conv2D/Conv2DBackpropInputConv2DBackpropInput@gradient_tape/my_model_1/model_1/conv2d_4/Conv2D/ShapeN:output:09my_model_1/model_1/conv2d_4/Conv2D/ReadVariableOp:value:0>gradient_tape/my_model_1/model_1/conv2d_4/ReluGrad:backprops:0*
T0*(
_output_shapes
:
��*
paddingVALID*
strides
�
Egradient_tape/my_model_1/model_1/conv2d_4/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter#my_model_1/model_1/lambda_1/sub:z:0@gradient_tape/my_model_1/model_1/conv2d_4/Conv2D/ShapeN:output:1>gradient_tape/my_model_1/model_1/conv2d_4/ReluGrad:backprops:0*
T0*&
_output_shapes
:*
paddingVALID*
strides
�
IdentityIdentityNgradient_tape/my_model_1/model_1/conv2d_4/Conv2D/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:�

Identity_1IdentityFgradient_tape/my_model_1/model_1/conv2d_4/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
:�

Identity_2IdentityNgradient_tape/my_model_1/model_1/conv2d_5/Conv2D/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
: �

Identity_3IdentityFgradient_tape/my_model_1/model_1/conv2d_5/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: �

Identity_4IdentityNgradient_tape/my_model_1/model_1/conv2d_6/Conv2D/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
: @�

Identity_5IdentityFgradient_tape/my_model_1/model_1/conv2d_6/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
:@�

Identity_6IdentityNgradient_tape/my_model_1/model_1/conv2d_7/Conv2D/Conv2DBackpropFilter:output:0*
T0*'
_output_shapes
:@��

Identity_7IdentityFgradient_tape/my_model_1/model_1/conv2d_7/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes	
:��

Identity_8IdentityBgradient_tape/my_model_1/model_1/dense_1/MatMul/MatMul_1:product:0*
T0*
_output_shapes
:	��

Identity_9IdentityEgradient_tape/my_model_1/model_1/dense_1/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
:�
	IdentityN	IdentityNNgradient_tape/my_model_1/model_1/conv2d_4/Conv2D/Conv2DBackpropFilter:output:0Fgradient_tape/my_model_1/model_1/conv2d_4/BiasAdd/BiasAddGrad:output:0Ngradient_tape/my_model_1/model_1/conv2d_5/Conv2D/Conv2DBackpropFilter:output:0Fgradient_tape/my_model_1/model_1/conv2d_5/BiasAdd/BiasAddGrad:output:0Ngradient_tape/my_model_1/model_1/conv2d_6/Conv2D/Conv2DBackpropFilter:output:0Fgradient_tape/my_model_1/model_1/conv2d_6/BiasAdd/BiasAddGrad:output:0Ngradient_tape/my_model_1/model_1/conv2d_7/Conv2D/Conv2DBackpropFilter:output:0Fgradient_tape/my_model_1/model_1/conv2d_7/BiasAdd/BiasAddGrad:output:0Bgradient_tape/my_model_1/model_1/dense_1/MatMul/MatMul_1:product:0Egradient_tape/my_model_1/model_1/dense_1/BiasAdd/BiasAddGrad:output:0Ngradient_tape/my_model_1/model_1/conv2d_4/Conv2D/Conv2DBackpropFilter:output:0Fgradient_tape/my_model_1/model_1/conv2d_4/BiasAdd/BiasAddGrad:output:0Ngradient_tape/my_model_1/model_1/conv2d_5/Conv2D/Conv2DBackpropFilter:output:0Fgradient_tape/my_model_1/model_1/conv2d_5/BiasAdd/BiasAddGrad:output:0Ngradient_tape/my_model_1/model_1/conv2d_6/Conv2D/Conv2DBackpropFilter:output:0Fgradient_tape/my_model_1/model_1/conv2d_6/BiasAdd/BiasAddGrad:output:0Ngradient_tape/my_model_1/model_1/conv2d_7/Conv2D/Conv2DBackpropFilter:output:0Fgradient_tape/my_model_1/model_1/conv2d_7/BiasAdd/BiasAddGrad:output:0Bgradient_tape/my_model_1/model_1/dense_1/MatMul/MatMul_1:product:0Egradient_tape/my_model_1/model_1/dense_1/BiasAdd/BiasAddGrad:output:0*
T
2*)
_gradient_op_typeCustomGradient-176*�
_output_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�:^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	I
add_1/yConst*
_output_shapes
: *
dtype0	*
value	B	 RY
add_1AddV2ReadVariableOp:value:0add_1/y:output:0*
T0	*
_output_shapes
: G
CastCast	add_1:z:0*

DstT0*

SrcT0	*
_output_shapes
: M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *fff?H
PowPowCast_1/x:output:0Cast:y:0*
T0*
_output_shapes
: M
Cast_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *w�?J
Pow_1PowCast_2/x:output:0Cast:y:0*
T0*
_output_shapes
: J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?F
subSubsub/x:output:0	Pow_1:z:0*
T0*
_output_shapes
: 6
SqrtSqrtsub:z:0*
T0*
_output_shapes
: b
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Q
mul_1MulReadVariableOp_1:value:0Sqrt:y:0*
T0*
_output_shapes
: L
sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?H
sub_1Subsub_1/x:output:0Pow:z:0*
T0*
_output_shapes
: I
truedivRealDiv	mul_1:z:0	sub_1:z:0*
T0*
_output_shapes
: z
sub_2/ReadVariableOpReadVariableOpsub_2_readvariableop_resource*&
_output_shapes
:*
dtype0o
sub_2SubIdentityN:output:0sub_2/ReadVariableOp:value:0*
T0*&
_output_shapes
:L
mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=Z
mul_2Mul	sub_2:z:0mul_2/y:output:0*
T0*&
_output_shapes
:�
AssignAddVariableOpAssignAddVariableOpsub_2_readvariableop_resource	mul_2:z:0^sub_2/ReadVariableOp*
_output_shapes
 *
dtype0U
SquareSquareIdentityN:output:0*
T0*&
_output_shapes
:z
sub_3/ReadVariableOpReadVariableOpsub_3_readvariableop_resource*&
_output_shapes
:*
dtype0g
sub_3Sub
Square:y:0sub_3/ReadVariableOp:value:0*
T0*&
_output_shapes
:L
mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:Z
mul_3Mul	sub_3:z:0mul_3/y:output:0*
T0*&
_output_shapes
:�
AssignAddVariableOp_1AssignAddVariableOpsub_3_readvariableop_resource	mul_3:z:0^sub_3/ReadVariableOp*
_output_shapes
 *
dtype0�
ReadVariableOp_2ReadVariableOpsub_2_readvariableop_resource^AssignAddVariableOp*&
_output_shapes
:*
dtype0d
mul_4MulReadVariableOp_2:value:0truediv:z:0*
T0*&
_output_shapes
:�
Sqrt_1/ReadVariableOpReadVariableOpsub_3_readvariableop_resource^AssignAddVariableOp_1*&
_output_shapes
:*
dtype0^
Sqrt_1SqrtSqrt_1/ReadVariableOp:value:0*
T0*&
_output_shapes
:L
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3]
add_2AddV2
Sqrt_1:y:0add_2/y:output:0*
T0*&
_output_shapes
:[
	truediv_1RealDiv	mul_4:z:0	add_2:z:0*
T0*&
_output_shapes
:�
AssignSubVariableOpAssignSubVariableOp:my_model_1_model_1_conv2d_4_conv2d_readvariableop_resourcetruediv_1:z:02^my_model_1/model_1/conv2d_4/Conv2D/ReadVariableOp*
_output_shapes
 *
dtype0`
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	I
add_3/yConst*
_output_shapes
: *
dtype0	*
value	B	 R[
add_3AddV2ReadVariableOp_3:value:0add_3/y:output:0*
T0	*
_output_shapes
: I
Cast_3Cast	add_3:z:0*

DstT0*

SrcT0	*
_output_shapes
: M
Cast_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *fff?L
Pow_2PowCast_4/x:output:0
Cast_3:y:0*
T0*
_output_shapes
: M
Cast_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *w�?L
Pow_3PowCast_5/x:output:0
Cast_3:y:0*
T0*
_output_shapes
: L
sub_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?J
sub_4Subsub_4/x:output:0	Pow_3:z:0*
T0*
_output_shapes
: :
Sqrt_2Sqrt	sub_4:z:0*
T0*
_output_shapes
: b
ReadVariableOp_4ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0S
mul_5MulReadVariableOp_4:value:0
Sqrt_2:y:0*
T0*
_output_shapes
: L
sub_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?J
sub_5Subsub_5/x:output:0	Pow_2:z:0*
T0*
_output_shapes
: K
	truediv_2RealDiv	mul_5:z:0	sub_5:z:0*
T0*
_output_shapes
: n
sub_6/ReadVariableOpReadVariableOpsub_6_readvariableop_resource*
_output_shapes
:*
dtype0c
sub_6SubIdentityN:output:1sub_6/ReadVariableOp:value:0*
T0*
_output_shapes
:L
mul_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=N
mul_6Mul	sub_6:z:0mul_6/y:output:0*
T0*
_output_shapes
:�
AssignAddVariableOp_2AssignAddVariableOpsub_6_readvariableop_resource	mul_6:z:0^sub_6/ReadVariableOp*
_output_shapes
 *
dtype0K
Square_1SquareIdentityN:output:1*
T0*
_output_shapes
:n
sub_7/ReadVariableOpReadVariableOpsub_7_readvariableop_resource*
_output_shapes
:*
dtype0]
sub_7SubSquare_1:y:0sub_7/ReadVariableOp:value:0*
T0*
_output_shapes
:L
mul_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:N
mul_7Mul	sub_7:z:0mul_7/y:output:0*
T0*
_output_shapes
:�
AssignAddVariableOp_3AssignAddVariableOpsub_7_readvariableop_resource	mul_7:z:0^sub_7/ReadVariableOp*
_output_shapes
 *
dtype0�
ReadVariableOp_5ReadVariableOpsub_6_readvariableop_resource^AssignAddVariableOp_2*
_output_shapes
:*
dtype0Z
mul_8MulReadVariableOp_5:value:0truediv_2:z:0*
T0*
_output_shapes
:�
Sqrt_3/ReadVariableOpReadVariableOpsub_7_readvariableop_resource^AssignAddVariableOp_3*
_output_shapes
:*
dtype0R
Sqrt_3SqrtSqrt_3/ReadVariableOp:value:0*
T0*
_output_shapes
:L
add_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3Q
add_4AddV2
Sqrt_3:y:0add_4/y:output:0*
T0*
_output_shapes
:O
	truediv_3RealDiv	mul_8:z:0	add_4:z:0*
T0*
_output_shapes
:�
AssignSubVariableOp_1AssignSubVariableOp;my_model_1_model_1_conv2d_4_biasadd_readvariableop_resourcetruediv_3:z:03^my_model_1/model_1/conv2d_4/BiasAdd/ReadVariableOp*
_output_shapes
 *
dtype0`
ReadVariableOp_6ReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	I
add_5/yConst*
_output_shapes
: *
dtype0	*
value	B	 R[
add_5AddV2ReadVariableOp_6:value:0add_5/y:output:0*
T0	*
_output_shapes
: I
Cast_6Cast	add_5:z:0*

DstT0*

SrcT0	*
_output_shapes
: M
Cast_7/xConst*
_output_shapes
: *
dtype0*
valueB
 *fff?L
Pow_4PowCast_7/x:output:0
Cast_6:y:0*
T0*
_output_shapes
: M
Cast_8/xConst*
_output_shapes
: *
dtype0*
valueB
 *w�?L
Pow_5PowCast_8/x:output:0
Cast_6:y:0*
T0*
_output_shapes
: L
sub_8/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?J
sub_8Subsub_8/x:output:0	Pow_5:z:0*
T0*
_output_shapes
: :
Sqrt_4Sqrt	sub_8:z:0*
T0*
_output_shapes
: b
ReadVariableOp_7ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0S
mul_9MulReadVariableOp_7:value:0
Sqrt_4:y:0*
T0*
_output_shapes
: L
sub_9/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?J
sub_9Subsub_9/x:output:0	Pow_4:z:0*
T0*
_output_shapes
: K
	truediv_4RealDiv	mul_9:z:0	sub_9:z:0*
T0*
_output_shapes
: |
sub_10/ReadVariableOpReadVariableOpsub_10_readvariableop_resource*&
_output_shapes
: *
dtype0q
sub_10SubIdentityN:output:2sub_10/ReadVariableOp:value:0*
T0*&
_output_shapes
: M
mul_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=]
mul_10Mul
sub_10:z:0mul_10/y:output:0*
T0*&
_output_shapes
: �
AssignAddVariableOp_4AssignAddVariableOpsub_10_readvariableop_resource
mul_10:z:0^sub_10/ReadVariableOp*
_output_shapes
 *
dtype0W
Square_2SquareIdentityN:output:2*
T0*&
_output_shapes
: |
sub_11/ReadVariableOpReadVariableOpsub_11_readvariableop_resource*&
_output_shapes
: *
dtype0k
sub_11SubSquare_2:y:0sub_11/ReadVariableOp:value:0*
T0*&
_output_shapes
: M
mul_11/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:]
mul_11Mul
sub_11:z:0mul_11/y:output:0*
T0*&
_output_shapes
: �
AssignAddVariableOp_5AssignAddVariableOpsub_11_readvariableop_resource
mul_11:z:0^sub_11/ReadVariableOp*
_output_shapes
 *
dtype0�
ReadVariableOp_8ReadVariableOpsub_10_readvariableop_resource^AssignAddVariableOp_4*&
_output_shapes
: *
dtype0g
mul_12MulReadVariableOp_8:value:0truediv_4:z:0*
T0*&
_output_shapes
: �
Sqrt_5/ReadVariableOpReadVariableOpsub_11_readvariableop_resource^AssignAddVariableOp_5*&
_output_shapes
: *
dtype0^
Sqrt_5SqrtSqrt_5/ReadVariableOp:value:0*
T0*&
_output_shapes
: L
add_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3]
add_6AddV2
Sqrt_5:y:0add_6/y:output:0*
T0*&
_output_shapes
: \
	truediv_5RealDiv
mul_12:z:0	add_6:z:0*
T0*&
_output_shapes
: �
AssignSubVariableOp_2AssignSubVariableOp:my_model_1_model_1_conv2d_5_conv2d_readvariableop_resourcetruediv_5:z:02^my_model_1/model_1/conv2d_5/Conv2D/ReadVariableOp*
_output_shapes
 *
dtype0`
ReadVariableOp_9ReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	I
add_7/yConst*
_output_shapes
: *
dtype0	*
value	B	 R[
add_7AddV2ReadVariableOp_9:value:0add_7/y:output:0*
T0	*
_output_shapes
: I
Cast_9Cast	add_7:z:0*

DstT0*

SrcT0	*
_output_shapes
: N
	Cast_10/xConst*
_output_shapes
: *
dtype0*
valueB
 *fff?M
Pow_6PowCast_10/x:output:0
Cast_9:y:0*
T0*
_output_shapes
: N
	Cast_11/xConst*
_output_shapes
: *
dtype0*
valueB
 *w�?M
Pow_7PowCast_11/x:output:0
Cast_9:y:0*
T0*
_output_shapes
: M
sub_12/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?L
sub_12Subsub_12/x:output:0	Pow_7:z:0*
T0*
_output_shapes
: ;
Sqrt_6Sqrt
sub_12:z:0*
T0*
_output_shapes
: c
ReadVariableOp_10ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0U
mul_13MulReadVariableOp_10:value:0
Sqrt_6:y:0*
T0*
_output_shapes
: M
sub_13/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?L
sub_13Subsub_13/x:output:0	Pow_6:z:0*
T0*
_output_shapes
: M
	truediv_6RealDiv
mul_13:z:0
sub_13:z:0*
T0*
_output_shapes
: p
sub_14/ReadVariableOpReadVariableOpsub_14_readvariableop_resource*
_output_shapes
: *
dtype0e
sub_14SubIdentityN:output:3sub_14/ReadVariableOp:value:0*
T0*
_output_shapes
: M
mul_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=Q
mul_14Mul
sub_14:z:0mul_14/y:output:0*
T0*
_output_shapes
: �
AssignAddVariableOp_6AssignAddVariableOpsub_14_readvariableop_resource
mul_14:z:0^sub_14/ReadVariableOp*
_output_shapes
 *
dtype0K
Square_3SquareIdentityN:output:3*
T0*
_output_shapes
: p
sub_15/ReadVariableOpReadVariableOpsub_15_readvariableop_resource*
_output_shapes
: *
dtype0_
sub_15SubSquare_3:y:0sub_15/ReadVariableOp:value:0*
T0*
_output_shapes
: M
mul_15/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:Q
mul_15Mul
sub_15:z:0mul_15/y:output:0*
T0*
_output_shapes
: �
AssignAddVariableOp_7AssignAddVariableOpsub_15_readvariableop_resource
mul_15:z:0^sub_15/ReadVariableOp*
_output_shapes
 *
dtype0�
ReadVariableOp_11ReadVariableOpsub_14_readvariableop_resource^AssignAddVariableOp_6*
_output_shapes
: *
dtype0\
mul_16MulReadVariableOp_11:value:0truediv_6:z:0*
T0*
_output_shapes
: �
Sqrt_7/ReadVariableOpReadVariableOpsub_15_readvariableop_resource^AssignAddVariableOp_7*
_output_shapes
: *
dtype0R
Sqrt_7SqrtSqrt_7/ReadVariableOp:value:0*
T0*
_output_shapes
: L
add_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3Q
add_8AddV2
Sqrt_7:y:0add_8/y:output:0*
T0*
_output_shapes
: P
	truediv_7RealDiv
mul_16:z:0	add_8:z:0*
T0*
_output_shapes
: �
AssignSubVariableOp_3AssignSubVariableOp;my_model_1_model_1_conv2d_5_biasadd_readvariableop_resourcetruediv_7:z:03^my_model_1/model_1/conv2d_5/BiasAdd/ReadVariableOp*
_output_shapes
 *
dtype0a
ReadVariableOp_12ReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	I
add_9/yConst*
_output_shapes
: *
dtype0	*
value	B	 R\
add_9AddV2ReadVariableOp_12:value:0add_9/y:output:0*
T0	*
_output_shapes
: J
Cast_12Cast	add_9:z:0*

DstT0*

SrcT0	*
_output_shapes
: N
	Cast_13/xConst*
_output_shapes
: *
dtype0*
valueB
 *fff?N
Pow_8PowCast_13/x:output:0Cast_12:y:0*
T0*
_output_shapes
: N
	Cast_14/xConst*
_output_shapes
: *
dtype0*
valueB
 *w�?N
Pow_9PowCast_14/x:output:0Cast_12:y:0*
T0*
_output_shapes
: M
sub_16/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?L
sub_16Subsub_16/x:output:0	Pow_9:z:0*
T0*
_output_shapes
: ;
Sqrt_8Sqrt
sub_16:z:0*
T0*
_output_shapes
: c
ReadVariableOp_13ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0U
mul_17MulReadVariableOp_13:value:0
Sqrt_8:y:0*
T0*
_output_shapes
: M
sub_17/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?L
sub_17Subsub_17/x:output:0	Pow_8:z:0*
T0*
_output_shapes
: M
	truediv_8RealDiv
mul_17:z:0
sub_17:z:0*
T0*
_output_shapes
: |
sub_18/ReadVariableOpReadVariableOpsub_18_readvariableop_resource*&
_output_shapes
: @*
dtype0q
sub_18SubIdentityN:output:4sub_18/ReadVariableOp:value:0*
T0*&
_output_shapes
: @M
mul_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=]
mul_18Mul
sub_18:z:0mul_18/y:output:0*
T0*&
_output_shapes
: @�
AssignAddVariableOp_8AssignAddVariableOpsub_18_readvariableop_resource
mul_18:z:0^sub_18/ReadVariableOp*
_output_shapes
 *
dtype0W
Square_4SquareIdentityN:output:4*
T0*&
_output_shapes
: @|
sub_19/ReadVariableOpReadVariableOpsub_19_readvariableop_resource*&
_output_shapes
: @*
dtype0k
sub_19SubSquare_4:y:0sub_19/ReadVariableOp:value:0*
T0*&
_output_shapes
: @M
mul_19/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:]
mul_19Mul
sub_19:z:0mul_19/y:output:0*
T0*&
_output_shapes
: @�
AssignAddVariableOp_9AssignAddVariableOpsub_19_readvariableop_resource
mul_19:z:0^sub_19/ReadVariableOp*
_output_shapes
 *
dtype0�
ReadVariableOp_14ReadVariableOpsub_18_readvariableop_resource^AssignAddVariableOp_8*&
_output_shapes
: @*
dtype0h
mul_20MulReadVariableOp_14:value:0truediv_8:z:0*
T0*&
_output_shapes
: @�
Sqrt_9/ReadVariableOpReadVariableOpsub_19_readvariableop_resource^AssignAddVariableOp_9*&
_output_shapes
: @*
dtype0^
Sqrt_9SqrtSqrt_9/ReadVariableOp:value:0*
T0*&
_output_shapes
: @M
add_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3_
add_10AddV2
Sqrt_9:y:0add_10/y:output:0*
T0*&
_output_shapes
: @]
	truediv_9RealDiv
mul_20:z:0
add_10:z:0*
T0*&
_output_shapes
: @�
AssignSubVariableOp_4AssignSubVariableOp:my_model_1_model_1_conv2d_6_conv2d_readvariableop_resourcetruediv_9:z:02^my_model_1/model_1/conv2d_6/Conv2D/ReadVariableOp*
_output_shapes
 *
dtype0a
ReadVariableOp_15ReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	J
add_11/yConst*
_output_shapes
: *
dtype0	*
value	B	 R^
add_11AddV2ReadVariableOp_15:value:0add_11/y:output:0*
T0	*
_output_shapes
: K
Cast_15Cast
add_11:z:0*

DstT0*

SrcT0	*
_output_shapes
: N
	Cast_16/xConst*
_output_shapes
: *
dtype0*
valueB
 *fff?O
Pow_10PowCast_16/x:output:0Cast_15:y:0*
T0*
_output_shapes
: N
	Cast_17/xConst*
_output_shapes
: *
dtype0*
valueB
 *w�?O
Pow_11PowCast_17/x:output:0Cast_15:y:0*
T0*
_output_shapes
: M
sub_20/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?M
sub_20Subsub_20/x:output:0
Pow_11:z:0*
T0*
_output_shapes
: <
Sqrt_10Sqrt
sub_20:z:0*
T0*
_output_shapes
: c
ReadVariableOp_16ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0V
mul_21MulReadVariableOp_16:value:0Sqrt_10:y:0*
T0*
_output_shapes
: M
sub_21/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?M
sub_21Subsub_21/x:output:0
Pow_10:z:0*
T0*
_output_shapes
: N

truediv_10RealDiv
mul_21:z:0
sub_21:z:0*
T0*
_output_shapes
: p
sub_22/ReadVariableOpReadVariableOpsub_22_readvariableop_resource*
_output_shapes
:@*
dtype0e
sub_22SubIdentityN:output:5sub_22/ReadVariableOp:value:0*
T0*
_output_shapes
:@M
mul_22/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=Q
mul_22Mul
sub_22:z:0mul_22/y:output:0*
T0*
_output_shapes
:@�
AssignAddVariableOp_10AssignAddVariableOpsub_22_readvariableop_resource
mul_22:z:0^sub_22/ReadVariableOp*
_output_shapes
 *
dtype0K
Square_5SquareIdentityN:output:5*
T0*
_output_shapes
:@p
sub_23/ReadVariableOpReadVariableOpsub_23_readvariableop_resource*
_output_shapes
:@*
dtype0_
sub_23SubSquare_5:y:0sub_23/ReadVariableOp:value:0*
T0*
_output_shapes
:@M
mul_23/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:Q
mul_23Mul
sub_23:z:0mul_23/y:output:0*
T0*
_output_shapes
:@�
AssignAddVariableOp_11AssignAddVariableOpsub_23_readvariableop_resource
mul_23:z:0^sub_23/ReadVariableOp*
_output_shapes
 *
dtype0�
ReadVariableOp_17ReadVariableOpsub_22_readvariableop_resource^AssignAddVariableOp_10*
_output_shapes
:@*
dtype0]
mul_24MulReadVariableOp_17:value:0truediv_10:z:0*
T0*
_output_shapes
:@�
Sqrt_11/ReadVariableOpReadVariableOpsub_23_readvariableop_resource^AssignAddVariableOp_11*
_output_shapes
:@*
dtype0T
Sqrt_11SqrtSqrt_11/ReadVariableOp:value:0*
T0*
_output_shapes
:@M
add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3T
add_12AddV2Sqrt_11:y:0add_12/y:output:0*
T0*
_output_shapes
:@R

truediv_11RealDiv
mul_24:z:0
add_12:z:0*
T0*
_output_shapes
:@�
AssignSubVariableOp_5AssignSubVariableOp;my_model_1_model_1_conv2d_6_biasadd_readvariableop_resourcetruediv_11:z:03^my_model_1/model_1/conv2d_6/BiasAdd/ReadVariableOp*
_output_shapes
 *
dtype0a
ReadVariableOp_18ReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	J
add_13/yConst*
_output_shapes
: *
dtype0	*
value	B	 R^
add_13AddV2ReadVariableOp_18:value:0add_13/y:output:0*
T0	*
_output_shapes
: K
Cast_18Cast
add_13:z:0*

DstT0*

SrcT0	*
_output_shapes
: N
	Cast_19/xConst*
_output_shapes
: *
dtype0*
valueB
 *fff?O
Pow_12PowCast_19/x:output:0Cast_18:y:0*
T0*
_output_shapes
: N
	Cast_20/xConst*
_output_shapes
: *
dtype0*
valueB
 *w�?O
Pow_13PowCast_20/x:output:0Cast_18:y:0*
T0*
_output_shapes
: M
sub_24/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?M
sub_24Subsub_24/x:output:0
Pow_13:z:0*
T0*
_output_shapes
: <
Sqrt_12Sqrt
sub_24:z:0*
T0*
_output_shapes
: c
ReadVariableOp_19ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0V
mul_25MulReadVariableOp_19:value:0Sqrt_12:y:0*
T0*
_output_shapes
: M
sub_25/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?M
sub_25Subsub_25/x:output:0
Pow_12:z:0*
T0*
_output_shapes
: N

truediv_12RealDiv
mul_25:z:0
sub_25:z:0*
T0*
_output_shapes
: }
sub_26/ReadVariableOpReadVariableOpsub_26_readvariableop_resource*'
_output_shapes
:@�*
dtype0r
sub_26SubIdentityN:output:6sub_26/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�M
mul_26/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=^
mul_26Mul
sub_26:z:0mul_26/y:output:0*
T0*'
_output_shapes
:@��
AssignAddVariableOp_12AssignAddVariableOpsub_26_readvariableop_resource
mul_26:z:0^sub_26/ReadVariableOp*
_output_shapes
 *
dtype0X
Square_6SquareIdentityN:output:6*
T0*'
_output_shapes
:@�}
sub_27/ReadVariableOpReadVariableOpsub_27_readvariableop_resource*'
_output_shapes
:@�*
dtype0l
sub_27SubSquare_6:y:0sub_27/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�M
mul_27/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:^
mul_27Mul
sub_27:z:0mul_27/y:output:0*
T0*'
_output_shapes
:@��
AssignAddVariableOp_13AssignAddVariableOpsub_27_readvariableop_resource
mul_27:z:0^sub_27/ReadVariableOp*
_output_shapes
 *
dtype0�
ReadVariableOp_20ReadVariableOpsub_26_readvariableop_resource^AssignAddVariableOp_12*'
_output_shapes
:@�*
dtype0j
mul_28MulReadVariableOp_20:value:0truediv_12:z:0*
T0*'
_output_shapes
:@��
Sqrt_13/ReadVariableOpReadVariableOpsub_27_readvariableop_resource^AssignAddVariableOp_13*'
_output_shapes
:@�*
dtype0a
Sqrt_13SqrtSqrt_13/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�M
add_14/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3a
add_14AddV2Sqrt_13:y:0add_14/y:output:0*
T0*'
_output_shapes
:@�_

truediv_13RealDiv
mul_28:z:0
add_14:z:0*
T0*'
_output_shapes
:@��
AssignSubVariableOp_6AssignSubVariableOp:my_model_1_model_1_conv2d_7_conv2d_readvariableop_resourcetruediv_13:z:02^my_model_1/model_1/conv2d_7/Conv2D/ReadVariableOp*
_output_shapes
 *
dtype0a
ReadVariableOp_21ReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	J
add_15/yConst*
_output_shapes
: *
dtype0	*
value	B	 R^
add_15AddV2ReadVariableOp_21:value:0add_15/y:output:0*
T0	*
_output_shapes
: K
Cast_21Cast
add_15:z:0*

DstT0*

SrcT0	*
_output_shapes
: N
	Cast_22/xConst*
_output_shapes
: *
dtype0*
valueB
 *fff?O
Pow_14PowCast_22/x:output:0Cast_21:y:0*
T0*
_output_shapes
: N
	Cast_23/xConst*
_output_shapes
: *
dtype0*
valueB
 *w�?O
Pow_15PowCast_23/x:output:0Cast_21:y:0*
T0*
_output_shapes
: M
sub_28/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?M
sub_28Subsub_28/x:output:0
Pow_15:z:0*
T0*
_output_shapes
: <
Sqrt_14Sqrt
sub_28:z:0*
T0*
_output_shapes
: c
ReadVariableOp_22ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0V
mul_29MulReadVariableOp_22:value:0Sqrt_14:y:0*
T0*
_output_shapes
: M
sub_29/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?M
sub_29Subsub_29/x:output:0
Pow_14:z:0*
T0*
_output_shapes
: N

truediv_14RealDiv
mul_29:z:0
sub_29:z:0*
T0*
_output_shapes
: q
sub_30/ReadVariableOpReadVariableOpsub_30_readvariableop_resource*
_output_shapes	
:�*
dtype0f
sub_30SubIdentityN:output:7sub_30/ReadVariableOp:value:0*
T0*
_output_shapes	
:�M
mul_30/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=R
mul_30Mul
sub_30:z:0mul_30/y:output:0*
T0*
_output_shapes	
:��
AssignAddVariableOp_14AssignAddVariableOpsub_30_readvariableop_resource
mul_30:z:0^sub_30/ReadVariableOp*
_output_shapes
 *
dtype0L
Square_7SquareIdentityN:output:7*
T0*
_output_shapes	
:�q
sub_31/ReadVariableOpReadVariableOpsub_31_readvariableop_resource*
_output_shapes	
:�*
dtype0`
sub_31SubSquare_7:y:0sub_31/ReadVariableOp:value:0*
T0*
_output_shapes	
:�M
mul_31/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:R
mul_31Mul
sub_31:z:0mul_31/y:output:0*
T0*
_output_shapes	
:��
AssignAddVariableOp_15AssignAddVariableOpsub_31_readvariableop_resource
mul_31:z:0^sub_31/ReadVariableOp*
_output_shapes
 *
dtype0�
ReadVariableOp_23ReadVariableOpsub_30_readvariableop_resource^AssignAddVariableOp_14*
_output_shapes	
:�*
dtype0^
mul_32MulReadVariableOp_23:value:0truediv_14:z:0*
T0*
_output_shapes	
:��
Sqrt_15/ReadVariableOpReadVariableOpsub_31_readvariableop_resource^AssignAddVariableOp_15*
_output_shapes	
:�*
dtype0U
Sqrt_15SqrtSqrt_15/ReadVariableOp:value:0*
T0*
_output_shapes	
:�M
add_16/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3U
add_16AddV2Sqrt_15:y:0add_16/y:output:0*
T0*
_output_shapes	
:�S

truediv_15RealDiv
mul_32:z:0
add_16:z:0*
T0*
_output_shapes	
:��
AssignSubVariableOp_7AssignSubVariableOp;my_model_1_model_1_conv2d_7_biasadd_readvariableop_resourcetruediv_15:z:03^my_model_1/model_1/conv2d_7/BiasAdd/ReadVariableOp*
_output_shapes
 *
dtype0a
ReadVariableOp_24ReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	J
add_17/yConst*
_output_shapes
: *
dtype0	*
value	B	 R^
add_17AddV2ReadVariableOp_24:value:0add_17/y:output:0*
T0	*
_output_shapes
: K
Cast_24Cast
add_17:z:0*

DstT0*

SrcT0	*
_output_shapes
: N
	Cast_25/xConst*
_output_shapes
: *
dtype0*
valueB
 *fff?O
Pow_16PowCast_25/x:output:0Cast_24:y:0*
T0*
_output_shapes
: N
	Cast_26/xConst*
_output_shapes
: *
dtype0*
valueB
 *w�?O
Pow_17PowCast_26/x:output:0Cast_24:y:0*
T0*
_output_shapes
: M
sub_32/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?M
sub_32Subsub_32/x:output:0
Pow_17:z:0*
T0*
_output_shapes
: <
Sqrt_16Sqrt
sub_32:z:0*
T0*
_output_shapes
: c
ReadVariableOp_25ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0V
mul_33MulReadVariableOp_25:value:0Sqrt_16:y:0*
T0*
_output_shapes
: M
sub_33/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?M
sub_33Subsub_33/x:output:0
Pow_16:z:0*
T0*
_output_shapes
: N

truediv_16RealDiv
mul_33:z:0
sub_33:z:0*
T0*
_output_shapes
: u
sub_34/ReadVariableOpReadVariableOpsub_34_readvariableop_resource*
_output_shapes
:	�*
dtype0j
sub_34SubIdentityN:output:8sub_34/ReadVariableOp:value:0*
T0*
_output_shapes
:	�M
mul_34/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=V
mul_34Mul
sub_34:z:0mul_34/y:output:0*
T0*
_output_shapes
:	��
AssignAddVariableOp_16AssignAddVariableOpsub_34_readvariableop_resource
mul_34:z:0^sub_34/ReadVariableOp*
_output_shapes
 *
dtype0P
Square_8SquareIdentityN:output:8*
T0*
_output_shapes
:	�u
sub_35/ReadVariableOpReadVariableOpsub_35_readvariableop_resource*
_output_shapes
:	�*
dtype0d
sub_35SubSquare_8:y:0sub_35/ReadVariableOp:value:0*
T0*
_output_shapes
:	�M
mul_35/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:V
mul_35Mul
sub_35:z:0mul_35/y:output:0*
T0*
_output_shapes
:	��
AssignAddVariableOp_17AssignAddVariableOpsub_35_readvariableop_resource
mul_35:z:0^sub_35/ReadVariableOp*
_output_shapes
 *
dtype0�
ReadVariableOp_26ReadVariableOpsub_34_readvariableop_resource^AssignAddVariableOp_16*
_output_shapes
:	�*
dtype0b
mul_36MulReadVariableOp_26:value:0truediv_16:z:0*
T0*
_output_shapes
:	��
Sqrt_17/ReadVariableOpReadVariableOpsub_35_readvariableop_resource^AssignAddVariableOp_17*
_output_shapes
:	�*
dtype0Y
Sqrt_17SqrtSqrt_17/ReadVariableOp:value:0*
T0*
_output_shapes
:	�M
add_18/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3Y
add_18AddV2Sqrt_17:y:0add_18/y:output:0*
T0*
_output_shapes
:	�W

truediv_17RealDiv
mul_36:z:0
add_18:z:0*
T0*
_output_shapes
:	��
AssignSubVariableOp_8AssignSubVariableOp9my_model_1_model_1_dense_1_matmul_readvariableop_resourcetruediv_17:z:01^my_model_1/model_1/dense_1/MatMul/ReadVariableOp*
_output_shapes
 *
dtype0a
ReadVariableOp_27ReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	J
add_19/yConst*
_output_shapes
: *
dtype0	*
value	B	 R^
add_19AddV2ReadVariableOp_27:value:0add_19/y:output:0*
T0	*
_output_shapes
: K
Cast_27Cast
add_19:z:0*

DstT0*

SrcT0	*
_output_shapes
: N
	Cast_28/xConst*
_output_shapes
: *
dtype0*
valueB
 *fff?O
Pow_18PowCast_28/x:output:0Cast_27:y:0*
T0*
_output_shapes
: N
	Cast_29/xConst*
_output_shapes
: *
dtype0*
valueB
 *w�?O
Pow_19PowCast_29/x:output:0Cast_27:y:0*
T0*
_output_shapes
: M
sub_36/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?M
sub_36Subsub_36/x:output:0
Pow_19:z:0*
T0*
_output_shapes
: <
Sqrt_18Sqrt
sub_36:z:0*
T0*
_output_shapes
: c
ReadVariableOp_28ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0V
mul_37MulReadVariableOp_28:value:0Sqrt_18:y:0*
T0*
_output_shapes
: M
sub_37/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?M
sub_37Subsub_37/x:output:0
Pow_18:z:0*
T0*
_output_shapes
: N

truediv_18RealDiv
mul_37:z:0
sub_37:z:0*
T0*
_output_shapes
: p
sub_38/ReadVariableOpReadVariableOpsub_38_readvariableop_resource*
_output_shapes
:*
dtype0e
sub_38SubIdentityN:output:9sub_38/ReadVariableOp:value:0*
T0*
_output_shapes
:M
mul_38/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=Q
mul_38Mul
sub_38:z:0mul_38/y:output:0*
T0*
_output_shapes
:�
AssignAddVariableOp_18AssignAddVariableOpsub_38_readvariableop_resource
mul_38:z:0^sub_38/ReadVariableOp*
_output_shapes
 *
dtype0K
Square_9SquareIdentityN:output:9*
T0*
_output_shapes
:p
sub_39/ReadVariableOpReadVariableOpsub_39_readvariableop_resource*
_output_shapes
:*
dtype0_
sub_39SubSquare_9:y:0sub_39/ReadVariableOp:value:0*
T0*
_output_shapes
:M
mul_39/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:Q
mul_39Mul
sub_39:z:0mul_39/y:output:0*
T0*
_output_shapes
:�
AssignAddVariableOp_19AssignAddVariableOpsub_39_readvariableop_resource
mul_39:z:0^sub_39/ReadVariableOp*
_output_shapes
 *
dtype0�
ReadVariableOp_29ReadVariableOpsub_38_readvariableop_resource^AssignAddVariableOp_18*
_output_shapes
:*
dtype0]
mul_40MulReadVariableOp_29:value:0truediv_18:z:0*
T0*
_output_shapes
:�
Sqrt_19/ReadVariableOpReadVariableOpsub_39_readvariableop_resource^AssignAddVariableOp_19*
_output_shapes
:*
dtype0T
Sqrt_19SqrtSqrt_19/ReadVariableOp:value:0*
T0*
_output_shapes
:M
add_20/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3T
add_20AddV2Sqrt_19:y:0add_20/y:output:0*
T0*
_output_shapes
:R

truediv_19RealDiv
mul_40:z:0
add_20:z:0*
T0*
_output_shapes
:�
AssignSubVariableOp_9AssignSubVariableOp:my_model_1_model_1_dense_1_biasadd_readvariableop_resourcetruediv_19:z:02^my_model_1/model_1/dense_1/BiasAdd/ReadVariableOp*
_output_shapes
 *
dtype0I
Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R�
AssignAddVariableOp_20AssignAddVariableOpreadvariableop_resourceConst_1:output:0^ReadVariableOp^ReadVariableOp_12^ReadVariableOp_15^ReadVariableOp_18^ReadVariableOp_21^ReadVariableOp_24^ReadVariableOp_27^ReadVariableOp_3^ReadVariableOp_6^ReadVariableOp_9*
_output_shapes
 *
dtype0	*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:
��:
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignAddVariableOpAssignAddVariableOp2.
AssignAddVariableOp_1AssignAddVariableOp_120
AssignAddVariableOp_10AssignAddVariableOp_1020
AssignAddVariableOp_11AssignAddVariableOp_1120
AssignAddVariableOp_12AssignAddVariableOp_1220
AssignAddVariableOp_13AssignAddVariableOp_1320
AssignAddVariableOp_14AssignAddVariableOp_1420
AssignAddVariableOp_15AssignAddVariableOp_1520
AssignAddVariableOp_16AssignAddVariableOp_1620
AssignAddVariableOp_17AssignAddVariableOp_1720
AssignAddVariableOp_18AssignAddVariableOp_1820
AssignAddVariableOp_19AssignAddVariableOp_192.
AssignAddVariableOp_2AssignAddVariableOp_220
AssignAddVariableOp_20AssignAddVariableOp_202.
AssignAddVariableOp_3AssignAddVariableOp_32.
AssignAddVariableOp_4AssignAddVariableOp_42.
AssignAddVariableOp_5AssignAddVariableOp_52.
AssignAddVariableOp_6AssignAddVariableOp_62.
AssignAddVariableOp_7AssignAddVariableOp_72.
AssignAddVariableOp_8AssignAddVariableOp_82.
AssignAddVariableOp_9AssignAddVariableOp_92*
AssignSubVariableOpAssignSubVariableOp2.
AssignSubVariableOp_1AssignSubVariableOp_12.
AssignSubVariableOp_2AssignSubVariableOp_22.
AssignSubVariableOp_3AssignSubVariableOp_32.
AssignSubVariableOp_4AssignSubVariableOp_42.
AssignSubVariableOp_5AssignSubVariableOp_52.
AssignSubVariableOp_6AssignSubVariableOp_62.
AssignSubVariableOp_7AssignSubVariableOp_72.
AssignSubVariableOp_8AssignSubVariableOp_82.
AssignSubVariableOp_9AssignSubVariableOp_92 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12&
ReadVariableOp_10ReadVariableOp_102&
ReadVariableOp_11ReadVariableOp_112&
ReadVariableOp_12ReadVariableOp_122&
ReadVariableOp_13ReadVariableOp_132&
ReadVariableOp_14ReadVariableOp_142&
ReadVariableOp_15ReadVariableOp_152&
ReadVariableOp_16ReadVariableOp_162&
ReadVariableOp_17ReadVariableOp_172&
ReadVariableOp_18ReadVariableOp_182&
ReadVariableOp_19ReadVariableOp_192$
ReadVariableOp_2ReadVariableOp_22&
ReadVariableOp_20ReadVariableOp_202&
ReadVariableOp_21ReadVariableOp_212&
ReadVariableOp_22ReadVariableOp_222&
ReadVariableOp_23ReadVariableOp_232&
ReadVariableOp_24ReadVariableOp_242&
ReadVariableOp_25ReadVariableOp_252&
ReadVariableOp_26ReadVariableOp_262&
ReadVariableOp_27ReadVariableOp_272&
ReadVariableOp_28ReadVariableOp_282&
ReadVariableOp_29ReadVariableOp_292$
ReadVariableOp_3ReadVariableOp_32$
ReadVariableOp_4ReadVariableOp_42$
ReadVariableOp_5ReadVariableOp_52$
ReadVariableOp_6ReadVariableOp_62$
ReadVariableOp_7ReadVariableOp_72$
ReadVariableOp_8ReadVariableOp_82$
ReadVariableOp_9ReadVariableOp_92.
Sqrt_1/ReadVariableOpSqrt_1/ReadVariableOp20
Sqrt_11/ReadVariableOpSqrt_11/ReadVariableOp20
Sqrt_13/ReadVariableOpSqrt_13/ReadVariableOp20
Sqrt_15/ReadVariableOpSqrt_15/ReadVariableOp20
Sqrt_17/ReadVariableOpSqrt_17/ReadVariableOp20
Sqrt_19/ReadVariableOpSqrt_19/ReadVariableOp2.
Sqrt_3/ReadVariableOpSqrt_3/ReadVariableOp2.
Sqrt_5/ReadVariableOpSqrt_5/ReadVariableOp2.
Sqrt_7/ReadVariableOpSqrt_7/ReadVariableOp2.
Sqrt_9/ReadVariableOpSqrt_9/ReadVariableOp2h
2my_model_1/model_1/conv2d_4/BiasAdd/ReadVariableOp2my_model_1/model_1/conv2d_4/BiasAdd/ReadVariableOp2f
1my_model_1/model_1/conv2d_4/Conv2D/ReadVariableOp1my_model_1/model_1/conv2d_4/Conv2D/ReadVariableOp2h
2my_model_1/model_1/conv2d_5/BiasAdd/ReadVariableOp2my_model_1/model_1/conv2d_5/BiasAdd/ReadVariableOp2f
1my_model_1/model_1/conv2d_5/Conv2D/ReadVariableOp1my_model_1/model_1/conv2d_5/Conv2D/ReadVariableOp2h
2my_model_1/model_1/conv2d_6/BiasAdd/ReadVariableOp2my_model_1/model_1/conv2d_6/BiasAdd/ReadVariableOp2f
1my_model_1/model_1/conv2d_6/Conv2D/ReadVariableOp1my_model_1/model_1/conv2d_6/Conv2D/ReadVariableOp2h
2my_model_1/model_1/conv2d_7/BiasAdd/ReadVariableOp2my_model_1/model_1/conv2d_7/BiasAdd/ReadVariableOp2f
1my_model_1/model_1/conv2d_7/Conv2D/ReadVariableOp1my_model_1/model_1/conv2d_7/Conv2D/ReadVariableOp2f
1my_model_1/model_1/dense_1/BiasAdd/ReadVariableOp1my_model_1/model_1/dense_1/BiasAdd/ReadVariableOp2d
0my_model_1/model_1/dense_1/MatMul/ReadVariableOp0my_model_1/model_1/dense_1/MatMul/ReadVariableOp2.
sub_10/ReadVariableOpsub_10/ReadVariableOp2.
sub_11/ReadVariableOpsub_11/ReadVariableOp2.
sub_14/ReadVariableOpsub_14/ReadVariableOp2.
sub_15/ReadVariableOpsub_15/ReadVariableOp2.
sub_18/ReadVariableOpsub_18/ReadVariableOp2.
sub_19/ReadVariableOpsub_19/ReadVariableOp2,
sub_2/ReadVariableOpsub_2/ReadVariableOp2.
sub_22/ReadVariableOpsub_22/ReadVariableOp2.
sub_23/ReadVariableOpsub_23/ReadVariableOp2.
sub_26/ReadVariableOpsub_26/ReadVariableOp2.
sub_27/ReadVariableOpsub_27/ReadVariableOp2,
sub_3/ReadVariableOpsub_3/ReadVariableOp2.
sub_30/ReadVariableOpsub_30/ReadVariableOp2.
sub_31/ReadVariableOpsub_31/ReadVariableOp2.
sub_34/ReadVariableOpsub_34/ReadVariableOp2.
sub_35/ReadVariableOpsub_35/ReadVariableOp2.
sub_38/ReadVariableOpsub_38/ReadVariableOp2.
sub_39/ReadVariableOpsub_39/ReadVariableOp2,
sub_6/ReadVariableOpsub_6/ReadVariableOp2,
sub_7/ReadVariableOpsub_7/ReadVariableOp:K G
(
_output_shapes
:
��

_user_specified_namex:A=

_output_shapes

:


_user_specified_namey
�#
�
__inference_gradient_func_2200
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference_gradient_func_2158_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�
�
B__inference_conv2d_4_layer_call_and_return_conditional_losses_2953

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
__inference__traced_save_8237
file_prefix@
&read_disablecopyonread_conv2d_4_kernel:4
&read_1_disablecopyonread_conv2d_4_bias:B
(read_2_disablecopyonread_conv2d_5_kernel: 4
&read_3_disablecopyonread_conv2d_5_bias: B
(read_4_disablecopyonread_conv2d_6_kernel: @4
&read_5_disablecopyonread_conv2d_6_bias:@C
(read_6_disablecopyonread_conv2d_7_kernel:@�5
&read_7_disablecopyonread_conv2d_7_bias:	�:
'read_8_disablecopyonread_dense_1_kernel:	�3
%read_9_disablecopyonread_dense_1_bias:-
#read_10_disablecopyonread_iteration:	 1
'read_11_disablecopyonread_learning_rate: J
0read_12_disablecopyonread_adam_m_conv2d_4_kernel:J
0read_13_disablecopyonread_adam_v_conv2d_4_kernel:<
.read_14_disablecopyonread_adam_m_conv2d_4_bias:<
.read_15_disablecopyonread_adam_v_conv2d_4_bias:J
0read_16_disablecopyonread_adam_m_conv2d_5_kernel: J
0read_17_disablecopyonread_adam_v_conv2d_5_kernel: <
.read_18_disablecopyonread_adam_m_conv2d_5_bias: <
.read_19_disablecopyonread_adam_v_conv2d_5_bias: J
0read_20_disablecopyonread_adam_m_conv2d_6_kernel: @J
0read_21_disablecopyonread_adam_v_conv2d_6_kernel: @<
.read_22_disablecopyonread_adam_m_conv2d_6_bias:@<
.read_23_disablecopyonread_adam_v_conv2d_6_bias:@K
0read_24_disablecopyonread_adam_m_conv2d_7_kernel:@�K
0read_25_disablecopyonread_adam_v_conv2d_7_kernel:@�=
.read_26_disablecopyonread_adam_m_conv2d_7_bias:	�=
.read_27_disablecopyonread_adam_v_conv2d_7_bias:	�B
/read_28_disablecopyonread_adam_m_dense_1_kernel:	�B
/read_29_disablecopyonread_adam_v_dense_1_kernel:	�;
-read_30_disablecopyonread_adam_m_dense_1_bias:;
-read_31_disablecopyonread_adam_v_dense_1_bias:
savev2_const
identity_65��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_conv2d_4_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_conv2d_4_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_conv2d_4_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_conv2d_5_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_conv2d_5_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
: z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_conv2d_5_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_conv2d_5_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: |
Read_4/DisableCopyOnReadDisableCopyOnRead(read_4_disablecopyonread_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp(read_4_disablecopyonread_conv2d_6_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
: @z
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_conv2d_6_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_conv2d_6_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:@|
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_conv2d_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_conv2d_7_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@�*
dtype0w
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@�n
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*'
_output_shapes
:@�z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_conv2d_7_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_conv2d_7_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:�{
Read_8/DisableCopyOnReadDisableCopyOnRead'read_8_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp'read_8_disablecopyonread_dense_1_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0o
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:	�y
Read_9/DisableCopyOnReadDisableCopyOnRead%read_9_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp%read_9_disablecopyonread_dense_1_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_10/DisableCopyOnReadDisableCopyOnRead#read_10_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp#read_10_disablecopyonread_iteration^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_11/DisableCopyOnReadDisableCopyOnRead'read_11_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp'read_11_disablecopyonread_learning_rate^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_12/DisableCopyOnReadDisableCopyOnRead0read_12_disablecopyonread_adam_m_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp0read_12_disablecopyonread_adam_m_conv2d_4_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_13/DisableCopyOnReadDisableCopyOnRead0read_13_disablecopyonread_adam_v_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp0read_13_disablecopyonread_adam_v_conv2d_4_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_14/DisableCopyOnReadDisableCopyOnRead.read_14_disablecopyonread_adam_m_conv2d_4_bias"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp.read_14_disablecopyonread_adam_m_conv2d_4_bias^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_15/DisableCopyOnReadDisableCopyOnRead.read_15_disablecopyonread_adam_v_conv2d_4_bias"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp.read_15_disablecopyonread_adam_v_conv2d_4_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_16/DisableCopyOnReadDisableCopyOnRead0read_16_disablecopyonread_adam_m_conv2d_5_kernel"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp0read_16_disablecopyonread_adam_m_conv2d_5_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_17/DisableCopyOnReadDisableCopyOnRead0read_17_disablecopyonread_adam_v_conv2d_5_kernel"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp0read_17_disablecopyonread_adam_v_conv2d_5_kernel^Read_17/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_18/DisableCopyOnReadDisableCopyOnRead.read_18_disablecopyonread_adam_m_conv2d_5_bias"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp.read_18_disablecopyonread_adam_m_conv2d_5_bias^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_19/DisableCopyOnReadDisableCopyOnRead.read_19_disablecopyonread_adam_v_conv2d_5_bias"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp.read_19_disablecopyonread_adam_v_conv2d_5_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_20/DisableCopyOnReadDisableCopyOnRead0read_20_disablecopyonread_adam_m_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp0read_20_disablecopyonread_adam_m_conv2d_6_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_21/DisableCopyOnReadDisableCopyOnRead0read_21_disablecopyonread_adam_v_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp0read_21_disablecopyonread_adam_v_conv2d_6_kernel^Read_21/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_22/DisableCopyOnReadDisableCopyOnRead.read_22_disablecopyonread_adam_m_conv2d_6_bias"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp.read_22_disablecopyonread_adam_m_conv2d_6_bias^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_23/DisableCopyOnReadDisableCopyOnRead.read_23_disablecopyonread_adam_v_conv2d_6_bias"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp.read_23_disablecopyonread_adam_v_conv2d_6_bias^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_24/DisableCopyOnReadDisableCopyOnRead0read_24_disablecopyonread_adam_m_conv2d_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp0read_24_disablecopyonread_adam_m_conv2d_7_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@�*
dtype0x
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@�n
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*'
_output_shapes
:@��
Read_25/DisableCopyOnReadDisableCopyOnRead0read_25_disablecopyonread_adam_v_conv2d_7_kernel"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp0read_25_disablecopyonread_adam_v_conv2d_7_kernel^Read_25/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@�*
dtype0x
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@�n
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*'
_output_shapes
:@��
Read_26/DisableCopyOnReadDisableCopyOnRead.read_26_disablecopyonread_adam_m_conv2d_7_bias"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp.read_26_disablecopyonread_adam_m_conv2d_7_bias^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_27/DisableCopyOnReadDisableCopyOnRead.read_27_disablecopyonread_adam_v_conv2d_7_bias"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp.read_27_disablecopyonread_adam_v_conv2d_7_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_28/DisableCopyOnReadDisableCopyOnRead/read_28_disablecopyonread_adam_m_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp/read_28_disablecopyonread_adam_m_dense_1_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_29/DisableCopyOnReadDisableCopyOnRead/read_29_disablecopyonread_adam_v_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp/read_29_disablecopyonread_adam_v_dense_1_kernel^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_30/DisableCopyOnReadDisableCopyOnRead-read_30_disablecopyonread_adam_m_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp-read_30_disablecopyonread_adam_m_dense_1_bias^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_31/DisableCopyOnReadDisableCopyOnRead-read_31_disablecopyonread_adam_v_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp-read_31_disablecopyonread_adam_v_dense_1_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*�
value�B�!B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB8_learner/optimize/_iterations/.ATTRIBUTES/VARIABLE_VALUEB;_learner/optimize/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB9_learner/optimize/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB9_learner/optimize/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB9_learner/optimize/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB9_learner/optimize/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB9_learner/optimize/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB9_learner/optimize/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB9_learner/optimize/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB9_learner/optimize/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB9_learner/optimize/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB:_learner/optimize/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB:_learner/optimize/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB:_learner/optimize/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB:_learner/optimize/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB:_learner/optimize/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB:_learner/optimize/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB:_learner/optimize/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB:_learner/optimize/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB:_learner/optimize/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB:_learner/optimize/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB:_learner/optimize/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 */
dtypes%
#2!	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_64Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_65IdentityIdentity_64:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_65Identity_65:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:!

_output_shapes
: 
�
�
B__inference_conv2d_7_layer_call_and_return_conditional_losses_7749

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������[
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:������������l
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:������������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�#
�
__inference_gradient_func_1634
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference_internal_grad_fn_1592_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�
�
'__inference_conv2d_5_layer_call_fn_7698

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_5_layer_call_and_return_conditional_losses_7139y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:����������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
&__inference_model_1_layer_call_fn_7372
input_2!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_7349o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_2
�

�
&__inference_model_1_layer_call_fn_7544

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_7349o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�#
�
__inference_gradient_func_1362
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference_internal_grad_fn_1320_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�>
�
A__inference_model_1_layer_call_and_return_conditional_losses_7597

inputsA
'conv2d_4_conv2d_readvariableop_resource:6
(conv2d_4_biasadd_readvariableop_resource:A
'conv2d_5_conv2d_readvariableop_resource: 6
(conv2d_5_biasadd_readvariableop_resource: A
'conv2d_6_conv2d_readvariableop_resource: @6
(conv2d_6_biasadd_readvariableop_resource:@B
'conv2d_7_conv2d_readvariableop_resource:@�7
(conv2d_7_biasadd_readvariableop_resource:	�9
&dense_1_matmul_readvariableop_resource:	�5
'dense_1_biasadd_readvariableop_resource:
identity��conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�conv2d_5/BiasAdd/ReadVariableOp�conv2d_5/Conv2D/ReadVariableOp�conv2d_6/BiasAdd/ReadVariableOp�conv2d_6/Conv2D/ReadVariableOp�conv2d_7/BiasAdd/ReadVariableOp�conv2d_7/Conv2D/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOpW
lambda_1/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �B|
lambda_1/truedivRealDivinputslambda_1/truediv/y:output:0*
T0*1
_output_shapes
:�����������S
lambda_1/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?~
lambda_1/subSublambda_1/truediv:z:0lambda_1/sub/y:output:0*
T0*1
_output_shapes
:������������
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_4/Conv2DConv2Dlambda_1/sub:z:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������l
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*1
_output_shapes
:������������
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_5/Conv2DConv2Dconv2d_4/Relu:activations:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
�
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� l
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_6/Conv2DConv2Dconv2d_5/Relu:activations:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingVALID*
strides
�
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@l
conv2d_6/ReluReluconv2d_6/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@�
conv2d_7/Conv2D/ReadVariableOpReadVariableOp'conv2d_7_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
conv2d_7/Conv2DConv2Dconv2d_6/Relu:activations:0&conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������*
paddingVALID*
strides
�
conv2d_7/BiasAdd/ReadVariableOpReadVariableOp(conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_7/BiasAddBiasAddconv2d_7/Conv2D:output:0'conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������m
conv2d_7/ReluReluconv2d_7/BiasAdd:output:0*
T0*2
_output_shapes 
:�������������
1global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
global_average_pooling2d_1/MeanMeanconv2d_7/Relu:activations:0:global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:����������\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_1/dropout/MulMul(global_average_pooling2d_1/Mean:output:0 dropout_1/dropout/Const:output:0*
T0*(
_output_shapes
:����������}
dropout_1/dropout/ShapeShape(global_average_pooling2d_1/Mean:output:0*
T0*
_output_shapes
::���
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������^
dropout_1/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_1/dropout/SelectV2SelectV2"dropout_1/dropout/GreaterEqual:z:0dropout_1/dropout/Mul:z:0"dropout_1/dropout/Const_1:output:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_1/MatMulMatMul#dropout_1/dropout/SelectV2:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp ^conv2d_7/BiasAdd/ReadVariableOp^conv2d_7/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2B
conv2d_7/BiasAdd/ReadVariableOpconv2d_7/BiasAdd/ReadVariableOp2@
conv2d_7/Conv2D/ReadVariableOpconv2d_7/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
 __inference__traced_restore_8343
file_prefix:
 assignvariableop_conv2d_4_kernel:.
 assignvariableop_1_conv2d_4_bias:<
"assignvariableop_2_conv2d_5_kernel: .
 assignvariableop_3_conv2d_5_bias: <
"assignvariableop_4_conv2d_6_kernel: @.
 assignvariableop_5_conv2d_6_bias:@=
"assignvariableop_6_conv2d_7_kernel:@�/
 assignvariableop_7_conv2d_7_bias:	�4
!assignvariableop_8_dense_1_kernel:	�-
assignvariableop_9_dense_1_bias:'
assignvariableop_10_iteration:	 +
!assignvariableop_11_learning_rate: D
*assignvariableop_12_adam_m_conv2d_4_kernel:D
*assignvariableop_13_adam_v_conv2d_4_kernel:6
(assignvariableop_14_adam_m_conv2d_4_bias:6
(assignvariableop_15_adam_v_conv2d_4_bias:D
*assignvariableop_16_adam_m_conv2d_5_kernel: D
*assignvariableop_17_adam_v_conv2d_5_kernel: 6
(assignvariableop_18_adam_m_conv2d_5_bias: 6
(assignvariableop_19_adam_v_conv2d_5_bias: D
*assignvariableop_20_adam_m_conv2d_6_kernel: @D
*assignvariableop_21_adam_v_conv2d_6_kernel: @6
(assignvariableop_22_adam_m_conv2d_6_bias:@6
(assignvariableop_23_adam_v_conv2d_6_bias:@E
*assignvariableop_24_adam_m_conv2d_7_kernel:@�E
*assignvariableop_25_adam_v_conv2d_7_kernel:@�7
(assignvariableop_26_adam_m_conv2d_7_bias:	�7
(assignvariableop_27_adam_v_conv2d_7_bias:	�<
)assignvariableop_28_adam_m_dense_1_kernel:	�<
)assignvariableop_29_adam_v_dense_1_kernel:	�5
'assignvariableop_30_adam_m_dense_1_bias:5
'assignvariableop_31_adam_v_dense_1_bias:
identity_33��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*�
value�B�!B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB8_learner/optimize/_iterations/.ATTRIBUTES/VARIABLE_VALUEB;_learner/optimize/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB9_learner/optimize/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB9_learner/optimize/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB9_learner/optimize/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB9_learner/optimize/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB9_learner/optimize/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB9_learner/optimize/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB9_learner/optimize/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB9_learner/optimize/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB9_learner/optimize/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB:_learner/optimize/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB:_learner/optimize/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB:_learner/optimize/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB:_learner/optimize/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB:_learner/optimize/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB:_learner/optimize/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB:_learner/optimize/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB:_learner/optimize/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB:_learner/optimize/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB:_learner/optimize/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB:_learner/optimize/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::*/
dtypes%
#2!	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp assignvariableop_conv2d_4_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_4_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_5_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_5_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_6_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_6_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_7_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_7_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_1_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_1_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_iterationIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp!assignvariableop_11_learning_rateIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp*assignvariableop_12_adam_m_conv2d_4_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp*assignvariableop_13_adam_v_conv2d_4_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp(assignvariableop_14_adam_m_conv2d_4_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_v_conv2d_4_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_m_conv2d_5_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_v_conv2d_5_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_m_conv2d_5_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_v_conv2d_5_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_m_conv2d_6_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_v_conv2d_6_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_m_conv2d_6_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_v_conv2d_6_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_m_conv2d_7_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_v_conv2d_7_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_m_conv2d_7_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_v_conv2d_7_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_m_dense_1_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_v_dense_1_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_m_dense_1_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_v_dense_1_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_32Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_33IdentityIdentity_32:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_33Identity_33:output:0*U
_input_shapesD
B: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
^
B__inference_lambda_1_layer_call_and_return_conditional_losses_7109

inputs
identityN
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �Bj
truedivRealDivinputstruediv/y:output:0*
T0*1
_output_shapes
:�����������J
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?c
subSubtruediv:z:0sub/y:output:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentitysub:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

a
B__inference_dropout_1_layer_call_and_return_conditional_losses_587

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�#
�
__inference_gradient_func_944
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference_internal_grad_fn_902_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�
�
A__inference_conv2d_5_layer_call_and_return_conditional_losses_814

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
B__inference_conv2d_4_layer_call_and_return_conditional_losses_7122

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�#
�
__inference_gradient_func_1404
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference_gradient_func_1362_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�
C
'__inference_lambda_1_layer_call_fn_7648

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_7109j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�#
�
__inference_gradient_func_1990
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference_gradient_func_1948_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�
U
9__inference_global_average_pooling2d_1_layer_call_fn_7754

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_7091i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�#
�
__inference_gradient_func_2158
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference_gradient_func_2116_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19
�#
�
__inference_gradient_func_986
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9�
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*
Tin
2*
Tout
2
*�
_output_shapesu
s::: : : @:@:@�:�:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *&
f!R
__inference_gradient_func_944_
IdentityIdentityPartitionedCall:output:0*
T0*&
_output_shapes
:U

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
:a

Identity_2IdentityPartitionedCall:output:2*
T0*&
_output_shapes
: U

Identity_3IdentityPartitionedCall:output:3*
T0*
_output_shapes
: a

Identity_4IdentityPartitionedCall:output:4*
T0*&
_output_shapes
: @U

Identity_5IdentityPartitionedCall:output:5*
T0*
_output_shapes
:@b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:@�V

Identity_7IdentityPartitionedCall:output:7*
T0*
_output_shapes	
:�Z

Identity_8IdentityPartitionedCall:output:8*
T0*
_output_shapes
:	�U

Identity_9IdentityPartitionedCall:output:9*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�::: : : @:@:@�:�:	�:::: : : @:@:@�:�:	�::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
: @
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:@
(
_user_specified_nameresult_grads_5:WS
'
_output_shapes
:@�
(
_user_specified_nameresult_grads_6:KG

_output_shapes	
:�
(
_user_specified_nameresult_grads_7:OK

_output_shapes
:	�
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_12:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: @
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:@
)
_user_specified_nameresult_grads_15:XT
'
_output_shapes
:@�
)
_user_specified_nameresult_grads_16:LH

_output_shapes	
:�
)
_user_specified_nameresult_grads_17:PL

_output_shapes
:	�
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_194
__inference_gradient_func_7917CustomGradient-1764
__inference_gradient_func_7960CustomGradient-1774
__inference_gradient_func_8003CustomGradient-1784
__inference_gradient_func_8046CustomGradient-1794
__inference_gradient_func_8089CustomGradient-180"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
args_09
serving_default_args_0:0�����������<
output_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

_model
	_learner


signatures
#_self_saveable_object_factories
	Train
Validate"
_tf_keras_model
f
0
1
2
3
4
5
6
7
8
9"
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
8
9"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
trace_0
trace_1
trace_2
 trace_32�
)__inference_my_model_1_layer_call_fn_3031
)__inference_my_model_1_layer_call_fn_3113
)__inference_my_model_1_layer_call_fn_3016
)__inference_my_model_1_layer_call_fn_3098�
���
FullArgSpec
args�
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0ztrace_1ztrace_2z trace_3
�
!trace_0
"trace_1
#trace_2
$trace_32�
D__inference_my_model_1_layer_call_and_return_conditional_losses_3046
D__inference_my_model_1_layer_call_and_return_conditional_losses_3128
C__inference_my_model_1_layer_call_and_return_conditional_losses_429
C__inference_my_model_1_layer_call_and_return_conditional_losses_765�
���
FullArgSpec
args�
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z!trace_0z"trace_1z#trace_2z$trace_3
�B�
__inference__wrapped_model_7057args_0"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
%layer-0
&layer-1
'layer_with_weights-0
'layer-2
(layer_with_weights-1
(layer-3
)layer_with_weights-2
)layer-4
*layer_with_weights-3
*layer-5
+layer-6
,layer-7
-layer_with_weights-4
-layer-8
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses
#4_self_saveable_object_factories"
_tf_keras_network
.
5optimize"
trackable_dict_wrapper
,
6serving_default"
signature_map
 "
trackable_dict_wrapper
�
7trace_02�
__inference_Train_2692�
���
FullArgSpec
args�

jx
jy
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z7trace_0
�
8trace_02�
__inference_Validate_3232�
���
FullArgSpec
args�

jx
jy
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z8trace_0
):'2conv2d_4/kernel
:2conv2d_4/bias
):' 2conv2d_5/kernel
: 2conv2d_5/bias
):' @2conv2d_6/kernel
:@2conv2d_6/bias
*:(@�2conv2d_7/kernel
:�2conv2d_7/bias
!:	�2dense_1/kernel
:2dense_1/bias
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_my_model_1_layer_call_fn_3031input_1"�
���
FullArgSpec
args�
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_my_model_1_layer_call_fn_3113input_1"�
���
FullArgSpec
args�
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_my_model_1_layer_call_fn_3016x"�
���
FullArgSpec
args�
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_my_model_1_layer_call_fn_3098x"�
���
FullArgSpec
args�
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_my_model_1_layer_call_and_return_conditional_losses_3046input_1"�
���
FullArgSpec
args�
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_my_model_1_layer_call_and_return_conditional_losses_3128input_1"�
���
FullArgSpec
args�
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_my_model_1_layer_call_and_return_conditional_losses_429x"�
���
FullArgSpec
args�
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_my_model_1_layer_call_and_return_conditional_losses_765x"�
���
FullArgSpec
args�
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
D
#9_self_saveable_object_factories"
_tf_keras_input_layer
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses
#@_self_saveable_object_factories"
_tf_keras_layer
�
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

kernel
bias
#G_self_saveable_object_factories
 H_jit_compiled_convolution_op"
_tf_keras_layer
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

kernel
bias
#O_self_saveable_object_factories
 P_jit_compiled_convolution_op"
_tf_keras_layer
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses

kernel
bias
#W_self_saveable_object_factories
 X_jit_compiled_convolution_op"
_tf_keras_layer
�
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses

kernel
bias
#__self_saveable_object_factories
 `_jit_compiled_convolution_op"
_tf_keras_layer
�
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses
#g_self_saveable_object_factories"
_tf_keras_layer
�
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses
n_random_generator
#o_self_saveable_object_factories"
_tf_keras_layer
�
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses

kernel
bias
#v_self_saveable_object_factories"
_tf_keras_layer
f
0
1
2
3
4
5
6
7
8
9"
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
8
9"
trackable_list_wrapper
 "
trackable_list_wrapper
�
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
�
|trace_0
}trace_1
~trace_2
trace_32�
&__inference_model_1_layer_call_fn_7315
&__inference_model_1_layer_call_fn_7372
&__inference_model_1_layer_call_fn_7519
&__inference_model_1_layer_call_fn_7544�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z|trace_0z}trace_1z~trace_2ztrace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
A__inference_model_1_layer_call_and_return_conditional_losses_7212
A__inference_model_1_layer_call_and_return_conditional_losses_7257
A__inference_model_1_layer_call_and_return_conditional_losses_7597
A__inference_model_1_layer_call_and_return_conditional_losses_7643�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
 "
trackable_dict_wrapper
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
$�_self_saveable_object_factories
�_update_step_xla"
experimentalOptimizer
�B�
"__inference_signature_wrapper_7084args_0"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_Train_2692xy"�
���
FullArgSpec
args�

jx
jy
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_Validate_3232xy"�
���
FullArgSpec
args�

jx
jy
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
'__inference_lambda_1_layer_call_fn_7648
'__inference_lambda_1_layer_call_fn_7653�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
B__inference_lambda_1_layer_call_and_return_conditional_losses_7661
B__inference_lambda_1_layer_call_and_return_conditional_losses_7669�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_conv2d_4_layer_call_fn_7678�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_conv2d_4_layer_call_and_return_conditional_losses_7689�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_conv2d_5_layer_call_fn_7698�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_conv2d_5_layer_call_and_return_conditional_losses_7709�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_conv2d_6_layer_call_fn_7718�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_conv2d_6_layer_call_and_return_conditional_losses_7729�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_conv2d_7_layer_call_fn_7738�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_conv2d_7_layer_call_and_return_conditional_losses_7749�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_dict_wrapper
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
9__inference_global_average_pooling2d_1_layer_call_fn_7754�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_7760�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_dropout_1_layer_call_fn_7765
(__inference_dropout_1_layer_call_fn_7770�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_dropout_1_layer_call_and_return_conditional_losses_7782
C__inference_dropout_1_layer_call_and_return_conditional_losses_7787�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
D
$�_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
&__inference_dense_1_layer_call_fn_7796�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
A__inference_dense_1_layer_call_and_return_conditional_losses_7807�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
_
%0
&1
'2
(3
)4
*5
+6
,7
-8"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_model_1_layer_call_fn_7315input_2"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_model_1_layer_call_fn_7372input_2"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_model_1_layer_call_fn_7519inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
&__inference_model_1_layer_call_fn_7544inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_model_1_layer_call_and_return_conditional_losses_7212input_2"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_model_1_layer_call_and_return_conditional_losses_7257input_2"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_model_1_layer_call_and_return_conditional_losses_7597inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_model_1_layer_call_and_return_conditional_losses_7643inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
p
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9"
trackable_list_wrapper
p
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9"
trackable_list_wrapper
 "
trackable_dict_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_lambda_1_layer_call_fn_7648inputs"�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
'__inference_lambda_1_layer_call_fn_7653inputs"�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_lambda_1_layer_call_and_return_conditional_losses_7661inputs"�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_lambda_1_layer_call_and_return_conditional_losses_7669inputs"�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_conv2d_4_layer_call_fn_7678inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_conv2d_4_layer_call_and_return_conditional_losses_7689inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_conv2d_5_layer_call_fn_7698inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_conv2d_5_layer_call_and_return_conditional_losses_7709inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_conv2d_6_layer_call_fn_7718inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_conv2d_6_layer_call_and_return_conditional_losses_7729inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_conv2d_7_layer_call_fn_7738inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_conv2d_7_layer_call_and_return_conditional_losses_7749inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
9__inference_global_average_pooling2d_1_layer_call_fn_7754inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_7760inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dropout_1_layer_call_fn_7765inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_dropout_1_layer_call_fn_7770inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dropout_1_layer_call_and_return_conditional_losses_7782inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dropout_1_layer_call_and_return_conditional_losses_7787inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_dense_1_layer_call_fn_7796inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_dense_1_layer_call_and_return_conditional_losses_7807inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.:,2Adam/m/conv2d_4/kernel
.:,2Adam/v/conv2d_4/kernel
 :2Adam/m/conv2d_4/bias
 :2Adam/v/conv2d_4/bias
.:, 2Adam/m/conv2d_5/kernel
.:, 2Adam/v/conv2d_5/kernel
 : 2Adam/m/conv2d_5/bias
 : 2Adam/v/conv2d_5/bias
.:, @2Adam/m/conv2d_6/kernel
.:, @2Adam/v/conv2d_6/kernel
 :@2Adam/m/conv2d_6/bias
 :@2Adam/v/conv2d_6/bias
/:-@�2Adam/m/conv2d_7/kernel
/:-@�2Adam/v/conv2d_7/kernel
!:�2Adam/m/conv2d_7/bias
!:�2Adam/v/conv2d_7/bias
&:$	�2Adam/m/dense_1/kernel
&:$	�2Adam/v/dense_1/kernel
:2Adam/m/dense_1/bias
:2Adam/v/dense_1/bias�
__inference_Train_2692}6����������������������?�<
5�2
�
x
��
�
y

� "
 |
__inference_Validate_3232_
?�<
5�2
�
x
��
�
y

� "�
unknown �
__inference__wrapped_model_7057�
=�:
3�0
*�'
args_0�����������

 
� "3�0
.
output_1"�
output_1����������
B__inference_conv2d_4_layer_call_and_return_conditional_losses_7689w9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
'__inference_conv2d_4_layer_call_fn_7678l9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
B__inference_conv2d_5_layer_call_and_return_conditional_losses_7709w9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0����������� 
� �
'__inference_conv2d_5_layer_call_fn_7698l9�6
/�,
*�'
inputs�����������
� "+�(
unknown����������� �
B__inference_conv2d_6_layer_call_and_return_conditional_losses_7729w9�6
/�,
*�'
inputs����������� 
� "6�3
,�)
tensor_0�����������@
� �
'__inference_conv2d_6_layer_call_fn_7718l9�6
/�,
*�'
inputs����������� 
� "+�(
unknown�����������@�
B__inference_conv2d_7_layer_call_and_return_conditional_losses_7749x9�6
/�,
*�'
inputs�����������@
� "7�4
-�*
tensor_0������������
� �
'__inference_conv2d_7_layer_call_fn_7738m9�6
/�,
*�'
inputs�����������@
� ",�)
unknown�������������
A__inference_dense_1_layer_call_and_return_conditional_losses_7807d0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������
� �
&__inference_dense_1_layer_call_fn_7796Y0�-
&�#
!�
inputs����������
� "!�
unknown����������
C__inference_dropout_1_layer_call_and_return_conditional_losses_7782e4�1
*�'
!�
inputs����������
p
� "-�*
#� 
tensor_0����������
� �
C__inference_dropout_1_layer_call_and_return_conditional_losses_7787e4�1
*�'
!�
inputs����������
p 
� "-�*
#� 
tensor_0����������
� �
(__inference_dropout_1_layer_call_fn_7765Z4�1
*�'
!�
inputs����������
p
� ""�
unknown�����������
(__inference_dropout_1_layer_call_fn_7770Z4�1
*�'
!�
inputs����������
p 
� ""�
unknown�����������
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_7760�R�O
H�E
C�@
inputs4������������������������������������
� "5�2
+�(
tensor_0������������������
� �
9__inference_global_average_pooling2d_1_layer_call_fn_7754�R�O
H�E
C�@
inputs4������������������������������������
� "*�'
unknown�������������������
__inference_gradient_func_7917����
���

 
'�$
result_grads_0
�
result_grads_1
'�$
result_grads_2 
�
result_grads_3 
'�$
result_grads_4 @
�
result_grads_5@
(�%
result_grads_6@�
�
result_grads_7�
 �
result_grads_8	�
�
result_grads_9
(�%
result_grads_10
�
result_grads_11
(�%
result_grads_12 
�
result_grads_13 
(�%
result_grads_14 @
�
result_grads_15@
)�&
result_grads_16@�
�
result_grads_17�
!�
result_grads_18	�
�
result_grads_19
� "���

 

 

 

 

 

 

 

 

 

 
"�
	tensor_10
�
	tensor_11
"�
	tensor_12 
�
	tensor_13 
"�
	tensor_14 @
�
	tensor_15@
#� 
	tensor_16@�
�
	tensor_17�
�
	tensor_18	�
�
	tensor_19�
__inference_gradient_func_7960����
���

 
'�$
result_grads_0
�
result_grads_1
'�$
result_grads_2 
�
result_grads_3 
'�$
result_grads_4 @
�
result_grads_5@
(�%
result_grads_6@�
�
result_grads_7�
 �
result_grads_8	�
�
result_grads_9
(�%
result_grads_10
�
result_grads_11
(�%
result_grads_12 
�
result_grads_13 
(�%
result_grads_14 @
�
result_grads_15@
)�&
result_grads_16@�
�
result_grads_17�
!�
result_grads_18	�
�
result_grads_19
� "���

 

 

 

 

 

 

 

 

 

 
"�
	tensor_10
�
	tensor_11
"�
	tensor_12 
�
	tensor_13 
"�
	tensor_14 @
�
	tensor_15@
#� 
	tensor_16@�
�
	tensor_17�
�
	tensor_18	�
�
	tensor_19�
__inference_gradient_func_8003����
���

 
'�$
result_grads_0
�
result_grads_1
'�$
result_grads_2 
�
result_grads_3 
'�$
result_grads_4 @
�
result_grads_5@
(�%
result_grads_6@�
�
result_grads_7�
 �
result_grads_8	�
�
result_grads_9
(�%
result_grads_10
�
result_grads_11
(�%
result_grads_12 
�
result_grads_13 
(�%
result_grads_14 @
�
result_grads_15@
)�&
result_grads_16@�
�
result_grads_17�
!�
result_grads_18	�
�
result_grads_19
� "���

 

 

 

 

 

 

 

 

 

 
"�
	tensor_10
�
	tensor_11
"�
	tensor_12 
�
	tensor_13 
"�
	tensor_14 @
�
	tensor_15@
#� 
	tensor_16@�
�
	tensor_17�
�
	tensor_18	�
�
	tensor_19�
__inference_gradient_func_8046����
���

 
'�$
result_grads_0
�
result_grads_1
'�$
result_grads_2 
�
result_grads_3 
'�$
result_grads_4 @
�
result_grads_5@
(�%
result_grads_6@�
�
result_grads_7�
 �
result_grads_8	�
�
result_grads_9
(�%
result_grads_10
�
result_grads_11
(�%
result_grads_12 
�
result_grads_13 
(�%
result_grads_14 @
�
result_grads_15@
)�&
result_grads_16@�
�
result_grads_17�
!�
result_grads_18	�
�
result_grads_19
� "���

 

 

 

 

 

 

 

 

 

 
"�
	tensor_10
�
	tensor_11
"�
	tensor_12 
�
	tensor_13 
"�
	tensor_14 @
�
	tensor_15@
#� 
	tensor_16@�
�
	tensor_17�
�
	tensor_18	�
�
	tensor_19�
__inference_gradient_func_8089����
���

 
'�$
result_grads_0
�
result_grads_1
'�$
result_grads_2 
�
result_grads_3 
'�$
result_grads_4 @
�
result_grads_5@
(�%
result_grads_6@�
�
result_grads_7�
 �
result_grads_8	�
�
result_grads_9
(�%
result_grads_10
�
result_grads_11
(�%
result_grads_12 
�
result_grads_13 
(�%
result_grads_14 @
�
result_grads_15@
)�&
result_grads_16@�
�
result_grads_17�
!�
result_grads_18	�
�
result_grads_19
� "���

 

 

 

 

 

 

 

 

 

 
"�
	tensor_10
�
	tensor_11
"�
	tensor_12 
�
	tensor_13 
"�
	tensor_14 @
�
	tensor_15@
#� 
	tensor_16@�
�
	tensor_17�
�
	tensor_18	�
�
	tensor_19�
B__inference_lambda_1_layer_call_and_return_conditional_losses_7661{A�>
7�4
*�'
inputs�����������

 
p
� "6�3
,�)
tensor_0�����������
� �
B__inference_lambda_1_layer_call_and_return_conditional_losses_7669{A�>
7�4
*�'
inputs�����������

 
p 
� "6�3
,�)
tensor_0�����������
� �
'__inference_lambda_1_layer_call_fn_7648pA�>
7�4
*�'
inputs�����������

 
p
� "+�(
unknown������������
'__inference_lambda_1_layer_call_fn_7653pA�>
7�4
*�'
inputs�����������

 
p 
� "+�(
unknown������������
A__inference_model_1_layer_call_and_return_conditional_losses_7212~
B�?
8�5
+�(
input_2�����������
p

 
� ",�)
"�
tensor_0���������
� �
A__inference_model_1_layer_call_and_return_conditional_losses_7257~
B�?
8�5
+�(
input_2�����������
p 

 
� ",�)
"�
tensor_0���������
� �
A__inference_model_1_layer_call_and_return_conditional_losses_7597}
A�>
7�4
*�'
inputs�����������
p

 
� ",�)
"�
tensor_0���������
� �
A__inference_model_1_layer_call_and_return_conditional_losses_7643}
A�>
7�4
*�'
inputs�����������
p 

 
� ",�)
"�
tensor_0���������
� �
&__inference_model_1_layer_call_fn_7315s
B�?
8�5
+�(
input_2�����������
p

 
� "!�
unknown����������
&__inference_model_1_layer_call_fn_7372s
B�?
8�5
+�(
input_2�����������
p 

 
� "!�
unknown����������
&__inference_model_1_layer_call_fn_7519r
A�>
7�4
*�'
inputs�����������
p

 
� "!�
unknown����������
&__inference_model_1_layer_call_fn_7544r
A�>
7�4
*�'
inputs�����������
p 

 
� "!�
unknown����������
D__inference_my_model_1_layer_call_and_return_conditional_losses_3046z
>�;
4�1
+�(
input_1�����������
p
� ",�)
"�
tensor_0���������
� �
D__inference_my_model_1_layer_call_and_return_conditional_losses_3128z
>�;
4�1
+�(
input_1�����������
p 
� ",�)
"�
tensor_0���������
� �
C__inference_my_model_1_layer_call_and_return_conditional_losses_429t
8�5
.�+
%�"
x�����������
p
� ",�)
"�
tensor_0���������
� �
C__inference_my_model_1_layer_call_and_return_conditional_losses_765t
8�5
.�+
%�"
x�����������
p 
� ",�)
"�
tensor_0���������
� �
)__inference_my_model_1_layer_call_fn_3016i
8�5
.�+
%�"
x�����������
p
� "!�
unknown����������
)__inference_my_model_1_layer_call_fn_3031o
>�;
4�1
+�(
input_1�����������
p
� "!�
unknown����������
)__inference_my_model_1_layer_call_fn_3098i
8�5
.�+
%�"
x�����������
p 
� "!�
unknown����������
)__inference_my_model_1_layer_call_fn_3113o
>�;
4�1
+�(
input_1�����������
p 
� "!�
unknown����������
"__inference_signature_wrapper_7084�
C�@
� 
9�6
4
args_0*�'
args_0�����������"3�0
.
output_1"�
output_1���������