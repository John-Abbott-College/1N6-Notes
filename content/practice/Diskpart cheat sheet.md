# Diskpart cheat sheet

## Opening Diskpart

- Open cmd
- Type `diskpart`



## Listing all available physical disks

`list disk`



## Listing all available partions on a disk

`select disk X` - where X is the number of the disk

`list partition`

### Creating a new partition from an existing volume

1. Make sure the disk is selected

2. List out all available volumes

   `list volume`

3. Select the volume we wish to shrink

   `select volume X` - where x is the number of the volume as it appears in the list 

4. Shrink the volume to create unallocated space

   `shrink desired=<space in Mb>` : put the number of Mb to remove from the volume

5. Create a partition from this unallocated space 

   `create partition primary format=ntfs size=<space in Mb>` 



### 