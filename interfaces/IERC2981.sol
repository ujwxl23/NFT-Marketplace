pragma solidity ^0.8.0;
// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/utils/introspection/ERC165.sol";

interface IERC2981 is IERC165 {
    // _tokenId - the NFT asset queried for royalty information
    // _salePrice - the sale price of the NFT asset specified by _tokenId
    // receiver - address of who should be sent the royalty payment
    // royaltyAmount - the royalty payment amount for _salePrice
    function royaltyInfo(
        uint256 _tokenId,
        uint256 _salePrice
    ) external view returns (address receiver, uint256 royaltyAmount);
}
